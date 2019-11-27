class Ticket < ApplicationRecord
  belongs_to :table
  belongs_to :article

end
