class NaverAlbumsController < AlbumsController
  def index
    @naver_albums = NaverAlbum.all
  end

  def new
    @naver_albums = NaverAlbum.get_albums("http://music.naver.com/todayMusic/index.nhn?startDate=20140210")
    @naver_albums.each do |naver_album|
      NaverAlbum.create(title: naver_album["title"], artist: naver_album["artist"], youtube_hash: naver_album["youtube_hash"])
    end

    render 'index'
  end
end
