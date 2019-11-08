class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :nom
      t.decimal :prix_HT, precision: 5, scale: 2

      t.timestamps
    end
  end
end
