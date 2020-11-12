class CreateUsersBeers < ActiveRecord::Migration[6.0]
  def change
    create_table :users_beers do |t|
      t.boolean :drank
      t.references :user, null: false, foreign_key: true
      t.references :beer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
