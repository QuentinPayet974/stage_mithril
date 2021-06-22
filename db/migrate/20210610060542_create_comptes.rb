class CreateComptes < ActiveRecord::Migration[5.2]
  def change
    create_table :comptes do |t|
      t.string :identifiant
      t.string :mdp

      t.timestamps
    end
  end
end
