class AddClassroomToTeacher < ActiveRecord::Migration[5.2]
  def change
    add_reference :teachers, :classroom, foreign_key: true
  end
end
