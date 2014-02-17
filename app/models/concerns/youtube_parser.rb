module Youtube
  extend ActiveSupport::Concern

    # seperation of concerns

    def parse_youtube(albums, index)
      search_url = get_youtube_search_url(albums[index]["title"], albums[index]["artist"])
      puts search_url

      source = crawl_from(search_url)

      source = source.css('.result-list .yt-lockup')[0].css('.yt-lockup-thumbnail a')

      albums[index]["youtube_hash"] = source[0]["href"][9..-1]
      albums[index]["youtube_url"] = get_youtube_watch_url source[0]['href'][9..-1]
      albums[index]["embed_url"] = get_youtube_embed_url source[0]['href'][9..-1]

      source = source.css('.yt-thumb-clip img')[0]['src']
      albums[index]['img_url'] = "http:".concat(source)

      return albums
    end
end
