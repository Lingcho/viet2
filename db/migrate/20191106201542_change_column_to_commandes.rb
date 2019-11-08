class ChangeColumnToCommandes < ActiveRecord::Migration[5.2]
  def change
        change_column_default :commandes, :statut, from: true, to: false

  end
end
