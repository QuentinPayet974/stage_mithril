class DropApropos < ActiveRecord::Migration[5.2]
  def change
    drop_table :apropos
  end
end
