class CreateCommandes < ActiveRecord::Migration[5.2]
  def change
    create_table :commandes do |t|
      t.string :numeros
      t.string :table
      t.boolean :statut
      t.boolean :payer

      t.timestamps
    end
  end
end
