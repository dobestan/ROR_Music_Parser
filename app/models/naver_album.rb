class NaverAlbum < Album
  def main(url)
    @albums = Array.new(5) { Hash.new }
    source = crawl_from(url)

    @targetList = source.css(".tm_section")

    for i in 1..5
      @albums[i-1]["title"] = parse_title(@targetList[i]) # only for naver music
      @albums[i-1]["artist"] = parse_artist(@targetList[i])

      @albums = parse_youtube(@albums, i-1) # albums is a arrays of hashes
                                            # this means that array.count == music number
                                            # also all of Hash contains same information
      # DB Structure?
      #   - title
      #   - artist
      #   - hash
      #   - thumbnail : find some rules. relation between thumbnail and hash
    end

    return @albums
  end

  # all of methods should be private
  private 
    def parse_title(target)
      target.css(".name").css("._title")[0]["title"]
    end

    def parse_artist(target)
      target.css("tbody td ._artist").css("._artist")[0]["title"]
    end
end
