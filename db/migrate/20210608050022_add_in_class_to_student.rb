class AddInClassToStudent < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :in_class, :integer
  end
end
