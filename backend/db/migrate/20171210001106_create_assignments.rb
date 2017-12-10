class CreateAssignments < ActiveRecord::Migration[5.1]
  def change
    create_table :assignments do |t|
      t.string :name, null: false
      t.text :description
      t.integer :point_value, default: 100
      t.date :due_date
      t.integer :class_id, null: false

      t.timestamps
    end

    add_index :assignments, :class_id
  end
end
