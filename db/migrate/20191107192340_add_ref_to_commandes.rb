class AddRefToCommandes < ActiveRecord::Migration[5.2]
  def change
    change_table :commandes do |t|
      t.references :table, foreign_key: true
      t.references :boisson, foreign_key: true
      t.references :article, foreign_key: true
    end
  end
end
