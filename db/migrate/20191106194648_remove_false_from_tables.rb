class RemoveFalseFromTables < ActiveRecord::Migration[5.2]
  def change
    remove_column :tables, :false, :boolean
  end
end
