class AddYoutubeHashToAlbum < ActiveRecord::Migration
  def change
    add_column :albums, :youtube_hash, :string
    add_column :naver_albums, :youtube_hash, :string
  end
end
