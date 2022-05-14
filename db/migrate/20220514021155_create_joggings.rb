class CreateJoggings < ActiveRecord::Migration[7.0]
  def change
    create_table :joggings do |t|
      t.string :date
      t.integer :distance
      t.integer :time

      t.timestamps
    end
  end
end
