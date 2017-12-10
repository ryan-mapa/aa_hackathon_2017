class CreateEnrollments < ActiveRecord::Migration[5.1]
  def change
    create_table :enrollments do |t|
      t.integer :class_id, null: false
      t.integer :student_id, null: false

      t.timestamps
    end
    add_index :enrollments, :class_id
    add_index :enrollments, :student_id
  end
end
