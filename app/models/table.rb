class Table < ApplicationRecord
  has_many :commandes, dependent: :destroy
  has_many :articles, through: :commandes
  has_many :boissons, through: :commandes
end
