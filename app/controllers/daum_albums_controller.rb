class DaumAlbumsController < ApplicationController
  def index
    @daum_albums = DaumAlbum.get_albums("http://music.daum.net/chart/chartsong/list")

    @daum_albums.each do |daum_album|
      DaumAlbum.create(title: daum_album["title"], artist: daum_album["artist"], youtube_hash: daum_album["youtube_hash"])
    end
  end
end
