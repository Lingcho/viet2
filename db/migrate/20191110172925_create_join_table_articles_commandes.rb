class CreateJoinTableArticlesCommandes < ActiveRecord::Migration[5.2]
  def change
    create_join_table :articles, :commandes do |t|
       t.index [:article_id, :commande_id]
       t.index [:commande_id, :article_id]
    end
  end
end
