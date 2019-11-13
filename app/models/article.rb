class Article < ApplicationRecord
  has_and_belongs_to_many :commandes

  validates :designation, uniqueness: true, presence: true
end
