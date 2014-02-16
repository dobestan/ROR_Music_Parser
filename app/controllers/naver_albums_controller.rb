class NaverAlbumsController < AlbumsController
  def index
    @naver_albums = NaverAlbum.new.main("http://music.naver.com/todayMusic/index.nhn?startDate=20140210")
  end
end
