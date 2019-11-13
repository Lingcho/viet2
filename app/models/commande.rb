class Commande < ApplicationRecord
  has_and_belongs_to_many :articles

  validates :numeros, uniqueness: true, presence: true

end
