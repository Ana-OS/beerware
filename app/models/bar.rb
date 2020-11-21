class Bar < ApplicationRecord
  has_many :bars_beers
  has_many :beers, through: :bars_beers

  # has_one_attached :photo

  include PgSearch::Model

  pg_search_scope :search_by_name_location_description,
   against: [:name, :location],

    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
