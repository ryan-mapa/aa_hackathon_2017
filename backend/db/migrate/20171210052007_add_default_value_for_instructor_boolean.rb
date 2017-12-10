class AddDefaultValueForInstructorBoolean < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :is_instructor, :boolean, default: false
  end
end
