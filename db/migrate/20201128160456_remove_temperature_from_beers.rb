class RemoveTemperatureFromBeers < ActiveRecord::Migration[6.0]
  def change
    remove_column :beers, :temperature, :integer
  end
end
