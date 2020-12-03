class Bar < ApplicationRecord
  has_many :bars_beers
  has_many :beers, through: :bars_beers


  # has_one_attached :photo
  geocoded_by :street_address
  after_validation :geocode, if: :will_save_change_to_location?


  include PgSearch::Model

  pg_search_scope :search_by_name_location_description,
   against: [:name, :street_address],

    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
