class CreateBeers < ActiveRecord::Migration[6.0]
  def change
    create_table :beers do |t|
      t.string :name
      t.string :category
      t.string :alcohol
      t.integer :ibu
      t.integer :temperature
      t.text :description

      t.timestamps
    end
  end
end
