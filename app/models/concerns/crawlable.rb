module Crawlable
  extend ActiveSupport::Concern

  def crawl_from(url)
    require 'open-uri'
    require 'nokogiri'
    Nokogiri::HTML(open(url))
  end
end
