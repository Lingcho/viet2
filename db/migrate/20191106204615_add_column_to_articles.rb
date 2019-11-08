class AddColumnToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :prixHT, :decimal
  end
end
