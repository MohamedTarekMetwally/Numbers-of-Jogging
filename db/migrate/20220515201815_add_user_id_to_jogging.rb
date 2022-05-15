class AddUserIdToJogging < ActiveRecord::Migration[7.0]
  def change
    add_column :joggings, :user_id, :integer
    add_index :joggings, :user_id
  end
end
