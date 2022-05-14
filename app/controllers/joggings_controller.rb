class JoggingsController < ApplicationController
  before_action :set_jogging, only: %i[ show edit update destroy ]

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
  end

  # GET /joggings/1/edit
  def edit
  end

  # POST /joggings or /joggings.json
  def create
    @jogging = Jogging.new(jogging_params)

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

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jogging
      @jogging = Jogging.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def jogging_params
      params.require(:jogging).permit(:date, :distance, :time)
    end
end
