class Table < ApplicationRecord
  has_many :tickets, dependent: :destroy
  has_many :articles, through: :tickets
end
