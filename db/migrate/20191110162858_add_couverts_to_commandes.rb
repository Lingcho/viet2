class AddCouvertsToCommandes < ActiveRecord::Migration[5.2]
  def change
    add_column :commandes, :couverts, :integer
  end
end
