class AddPhotoUrlToBeers < ActiveRecord::Migration[6.0]
  def change
    add_column :beers, :photo_url, :string
  end
end
