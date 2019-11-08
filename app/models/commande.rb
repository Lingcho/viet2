class Commande < ApplicationRecord
  belongs_to :table
  belongs_to :articles
end
