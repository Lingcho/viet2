class Article < ApplicationRecord
  has_many :tickets
  has_many :tables, through: :tickets

end
