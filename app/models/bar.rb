class Bar < ApplicationRecord
  has_many :bars_beers
  has_many :beers, through: :bars_beers
end
