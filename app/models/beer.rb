class Beer < ApplicationRecord
  has_many :bars_beers
  has_many :bars, through: :bars_beers

  has_many :users_beers
  has_many :users, through: :users_beers

  has_many :reviews
end
