class CreateBars < ActiveRecord::Migration[6.0]
  def change
    create_table :bars do |t|
      t.string :name
      t.text :description
      t.string :location
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
