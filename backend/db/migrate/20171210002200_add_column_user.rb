class AddColumnUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :class_id, :integer
    add_column :users, :group_id, :integer
    add_index :users, :class_id
    add_index :users, :group_id
  end
end
