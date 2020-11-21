class Beer < ApplicationRecord
  has_many :bars_beers
  has_many :bars, through: :bars_beers

  has_many :users_beers
  has_many :users, through: :users_beers

  has_many :reviews, dependent: :destroy

  # has_one_attached :photo

  include PgSearch::Model
  pg_search_scope :search_beers_by_name_category_description,
   against: [:name, :category],
    using: {
      tsearch: { prefix: true }
    }
end
