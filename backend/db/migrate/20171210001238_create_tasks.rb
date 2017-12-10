class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.boolean :completed, default: false
      t.integer :assignment_id, null: false
      t.integer :student_id, null: false


      t.timestamps
    end

    add_index :tasks, :assignment_id
    add_index :tasks, :student_id
  end
end
