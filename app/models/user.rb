class User < ApplicationRecord
  has_many :users_beers
  has_many :beers, through: :users_beers

  has_many :reviews

end
