class AddPhotoUrlToBars < ActiveRecord::Migration[6.0]
  def change
    add_column :bars, :photo_url, :string
  end
end
