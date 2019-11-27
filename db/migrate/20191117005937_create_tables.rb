class CreateTables < ActiveRecord::Migration[5.2]
  def change
    create_table :tables do |t|
      t.string :nom
      t.integer :couvert

      t.timestamps
    end
  end
end


# Tables -> Commandes
# Articles -> Articles
# Tickets -> Articles_Commandes

# Ajout de l' article 4 dans la commande A :
# a.Articles_Commandes << Articles_Commandes.create(article_id:4)
