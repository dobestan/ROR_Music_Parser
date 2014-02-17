class NaverAlbum < Album

  # NaverAlbum has a [:titile, :artist, :youtube_hash]
  def self.get_albums(url)
    @albums = Array.new(5) { Hash.new }

    get_albums_from_naver(@albums, crawl_from(url).css(".tm_section"))
    get_albums_from_youtube(@albums)
  end

  # Template Process Method : 1
  def self.get_albums_from_naver(albums, source)
    albums.each_with_index do |album, index|
      albums[index]["title"] = parse_title source[index+1]
      albums[index]["artist"] = parse_artist source[index+1]
    end
  end

  def self.parse_title(target)
    target.css(".name").css("._title")[0]["title"]
  end

  def self.parse_artist(target)
    target.css("tbody td ._artist").css("._artist")[0]["title"]
  end

end
