class CreateCommandes < ActiveRecord::Migration[5.2]
  def change
    create_table :commandes do |t|
      t.integer :num
      t.boolean :statut, false

      t.timestamps
    end
  end
end


