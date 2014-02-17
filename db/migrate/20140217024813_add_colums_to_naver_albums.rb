class AddColumsToNaverAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :title, :string
    add_column :albums, :artist, :string

    add_column :naver_albums, :title, :string
    add_column :naver_albums, :artist, :string
  end
end
