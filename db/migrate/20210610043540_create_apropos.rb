class CreateApropos < ActiveRecord::Migration[5.2]
  def change
    create_table :apropos do |t|

      t.timestamps
    end
  end
end
