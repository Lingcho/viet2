class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :code
      t.string :designation
      t.integer :prix

      t.timestamps
    end
  end
end
