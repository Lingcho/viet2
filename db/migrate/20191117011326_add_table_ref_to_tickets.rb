class AddTableRefToTickets < ActiveRecord::Migration[5.2]
  def change
    add_reference :tickets, :table, foreign_key: true
  end
end
