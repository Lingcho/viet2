class AddArticleRefToTickets < ActiveRecord::Migration[5.2]
  def change
    add_reference :tickets, :article, foreign_key: true
  end
end
