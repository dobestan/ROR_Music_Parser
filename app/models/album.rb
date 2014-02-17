class Album < ActiveRecord::Base
  extend Crawler # Crawl = Get HTML source code
  extend YoutubeParser
  extend AlbumsHelper 

  # Validation
 
  validates :title, presence: true,
                    uniqueness: true
  validates :artist, presence: true
  validates :youtube_hash, presence: true,
                    uniqueness: true

  # pure virtual function
  # must define input and output
  
  def get_albums(url)
    # should return albums
    # List of Hashes
    
    # must implement 
    #   - custom site parser
  end

  def parse_title
  end

  def parse_artist
  end
end
