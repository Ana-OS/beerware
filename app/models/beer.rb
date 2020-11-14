class Beer < ApplicationRecord
  has_many :bars_beers
  has_many :bars, through: :bars_beers

  has_many :users_beers
  has_many :users, through: :users_beers

  has_many :reviews

  include PgSearch::Model
  pg_search_scope :search_by_name_category_description,
   against: [:name, :category],

  # associated_against: {
  #     bar: [ :name ]
  #   },
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
