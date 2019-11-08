class RemoveColumnFromArticles < ActiveRecord::Migration[5.2]
  def change
    remove_column :articles, :prix_HT, :decimal
  end
end
