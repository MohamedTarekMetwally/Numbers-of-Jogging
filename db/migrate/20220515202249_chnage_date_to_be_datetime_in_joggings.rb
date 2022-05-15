class ChnageDateToBeDatetimeInJoggings < ActiveRecord::Migration[7.0]
  def change
    change_column :joggings, :date, :datetime
  end
end
