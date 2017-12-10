class CreateMemberships < ActiveRecord::Migration[5.1]
  def change
    create_table :memberships do |t|
      t.integer :group_id, null: false
      t.integer :student_id, null: false

      t.timestamps
    end
    add_index :memberships, :group_id
    add_index :memberships, :student_id
  end
end
