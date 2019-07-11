class CreateTables < ActiveRecord::Migration[5.2]
  def change
    create_table :tables do |t|
      t.string :numeros
      t.integer :couverts
      t.boolean :reglement, false

      t.timestamps
    end
  end
end
