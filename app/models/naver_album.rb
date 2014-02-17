class NaverAlbum < Album
  # NaverAlbum has a [:titile, :artist, :youtube_hash]
  def self.get_albums(url)
    @albums = Array.new(5) { Hash.new }
    source = crawl_from(url)

    @targetList = source.css(".tm_section")

    for i in 1..5
      @albums[i-1]["title"] = parse_title(@targetList[i]) # only for naver music
      @albums[i-1]["artist"] = parse_artist(@targetList[i])

      @albums = parse_youtube(@albums, i-1)
    end

    return @albums
  end

  def self.parse_title(target)
    target.css(".name").css("._title")[0]["title"]
  end

  def self.parse_artist(target)
    target.css("tbody td ._artist").css("._artist")[0]["title"]
  end

end
