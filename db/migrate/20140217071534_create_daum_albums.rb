class CreateDaumAlbums < ActiveRecord::Migration
  def change
    create_table :daum_albums do |t|
      t.string :title
      t.string :artist
      t.string :youtube_hash

      t.timestamps
    end
  end
end
