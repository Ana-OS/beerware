class AddBreweryToBeers < ActiveRecord::Migration[6.0]
  def change
    add_column :beers, :brewery, :string
  end
end
