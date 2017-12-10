class CreateClassrooms < ActiveRecord::Migration[5.1]
  def change
    create_table :classrooms do |t|
      t.string :name, null: false
      t.integer :instructor_id, null: false


      t.timestamps
    end

    add_index :classrooms, :instructor_id
  end
end
