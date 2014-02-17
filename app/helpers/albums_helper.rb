module AlbumsHelper
  SEARCH_URL_WITHOUT_QUERY = "http://www.youtube.com/results?search_query="
  WATCH_URL_WITHOUT_HASH = "http://www.youtube.com/watch?v="
  EMBED_URL_WITHOUT_HASH = "http://www.youtube.com/embed/"
  THUMBNAIL_URL_WITHOUT_HASH = "http://i1.ytimg.com/vi/"
  THUMBNAIL_FILENAME = "mqdefault.jpg" 

  def get_youtube_search_url(title, artist)
    URI.encode(SEARCH_URL_WITHOUT_QUERY + title.to_s + "+" + artist.to_s)
  end

  def get_youtube_watch_url(hash)
    WATCH_URL_WITHOUT_HASH + hash.to_s
  end

  def get_youtube_embed_url(hash)
    EMBED_URL_WITHOUT_HASH + hash.to_s
  end

  def get_youtube_thumbnail(hash)
    THUMBNAIL_URL_WITHOUT_HASH + hash.to_s + "/" + THUMBNAIL_FILENAME
  end
end
