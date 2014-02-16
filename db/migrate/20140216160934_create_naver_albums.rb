class CreateNaverAlbums < ActiveRecord::Migration
  def change
    create_table :naver_albums do |t|

      t.timestamps
    end
  end
end
