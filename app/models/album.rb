class Album < ActiveRecord::Base
  extend Crawlable # same code
  extend Youtube # same code 
  extend AlbumsHelper # same code

  validates :title, presence: true,
                    uniqueness: true
  validates :artist, presence: true
  validates :youtube_hash, presence: true,
                    uniqueness: true

  # pure virtual function
  # must define input and output
  def parse_title
  end

  def parse_artist
  end
end
