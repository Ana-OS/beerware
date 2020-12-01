class AddStreetAddressToBars < ActiveRecord::Migration[6.0]
  def change
    add_column :bars, :street_address, :string
  end
end
