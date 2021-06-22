class AddHiearchieToCompte < ActiveRecord::Migration[5.2]
  def change
    add_reference :comptes, :Compte, foreign_key: true
  end
end
