class JoggingsController < ApplicationController
  before_action :set_jogging, only: %i[ show edit update destroy ]
  before_action :authenticate_user!, except:[:index, :show]
  #before_action :correct_user || pirority_user ,only: [:edit, :update, :destroy]

  # GET /joggings or /joggings.json
  def index
    @joggings = Jogging.all
  end

  # GET /joggings/1 or /joggings/1.json
  def show
  end

  # GET /joggings/new
  def new
    @jogging = Jogging.new
    #@jogging = current_user.Jogging.build
  end

  # GET /joggings/1/edit
  def edit
  end

  # POST /joggings or /joggings.json
  def create
    @jogging = Jogging.new(jogging_params)
    #@jogging = current_user.Jogging.build(jogging_params)

    respond_to do |format|
      if @jogging.save
        format.html { redirect_to jogging_url(@jogging), notice: "Jogging was successfully created." }
        format.json { render :show, status: :created, location: @jogging }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @jogging.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /joggings/1 or /joggings/1.json
  def update
    respond_to do |format|
      if @jogging.update(jogging_params)
        format.html { redirect_to jogging_url(@jogging), notice: "Jogging was successfully updated." }
        format.json { render :show, status: :ok, location: @jogging }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @jogging.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /joggings/1 or /joggings/1.json
  def destroy
    @jogging.destroy

    respond_to do |format|
      format.html { redirect_to joggings_url, notice: "Jogging was successfully destroyed." }
      format.json { head :no_content }
    end
  end


  #def correct_user
    #@jogging = current_user.Jogging.find_by(id: params[:id])
    ##@jog = current_user.role.find_by(id: params[:position])
   # redirect_to  joggings_path, notice: "Not authorized to edit this Jogging" if @jogging.nil?
  #end

  #def pirority_user
   # @jogging = current_user.role
  #  redirect_to joggings_path, notice: "Not authorized" if @jogging <2
  #end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jogging
      @jogging = Jogging.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def jogging_params
      params.require(:jogging).permit(:date, :distance, :time, :user_id)
    end
end

def index
  @date_method = (params[:search].present? ? params[:search][:date_method] : 'indate').to_sym
  @start = selected_date(:start_date)
  @end = selected_date(:end_date)

  @jogging = params[:search].present? ? jogging.where(@date_method => @start..@end) : Jogging.none
end

private

def selected_date(symbol)
  params[:search].present? && params[:search][symbol].present? ? params[:search][symbol].to_date : Time.now.to_date
end
