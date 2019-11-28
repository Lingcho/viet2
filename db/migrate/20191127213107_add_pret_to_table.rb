class AddPretToTable < ActiveRecord::Migration[5.2]
  def change
    add_column :tables, :pret, :boolean, default: false
  end
end
