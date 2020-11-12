class CreateBarsBeers < ActiveRecord::Migration[6.0]
  def change
    create_table :bars_beers do |t|
      t.references :bar, null: false, foreign_key: true
      t.references :beer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
