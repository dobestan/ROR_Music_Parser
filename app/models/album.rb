class Album < ActiveRecord::Base
  include Crawlable # same code
  include Youtube # same code 
  include AlbumsHelper # same code

  # pure virtual function
  # must define input and output
  def parse_title
  end

  def parse_artist
  end
end
