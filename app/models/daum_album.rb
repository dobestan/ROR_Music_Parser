class DaumAlbum < Album
  # NaverAlbum has a [:titile, :artist, :youtube_hash]
  def self.get_albums(url)
    @albums = Array.new(50) { Hash.new }
    get_albums_from_daum(@albums, crawl_from(url).css("tr.track"))
    get_albums_from_youtube(@albums)
  end

  # Template Process Method : 1
  def self.get_albums_from_daum(albums, source)
    albums.each_with_index do |album, index|
      albums[index]["title"] = parse_title source[index]
      albums[index]["artist"] = parse_artist source[index]
    end
  end

  def self.parse_title(target)
    target.css("a.CT_ZONE_LIST_SONG")[0]["title"]
  end

  def self.parse_artist(target)
    target.css("a.CT_ZONE_LIST_ARTIST")[0]["title"]
  end
end
