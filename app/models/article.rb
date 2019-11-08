class Article < ApplicationRecord
has_many :commandes
has_many :tables, through: :commandes
end
