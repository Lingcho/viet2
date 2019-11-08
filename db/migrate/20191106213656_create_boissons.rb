class CreateBoissons < ActiveRecord::Migration[5.2]
  def change
    create_table :boissons do |t|
      t.string :nom
      t.decimal :prix

      t.timestamps
    end
  end
end
