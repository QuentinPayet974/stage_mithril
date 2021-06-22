class CreateClassrooms < ActiveRecord::Migration[5.2]
  def change
    create_table :classrooms do |t|
      t.integer :students_number
      t.integer :room_number

      t.timestamps
    end
  end
end
