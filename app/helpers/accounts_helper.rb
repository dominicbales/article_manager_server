require 'nokogiri'
require 'open-uri'


module AccountsHelper
  # class RequestData
  #   def self.fetch(url, request_type)
  #     request_type.grab(url)
  #   end
  # end
end

module RequestType
  class Api
    def self.grab(url)
      puts "inside API Request Type, URL is: #{url}"
    end
  end
  class Scrape
    def self.grab(url)
      puts "inside Scrape Request Type, URL is: #{url}"
      devToScrape()
    end

    
    def Scrape.devToScrape()
      # TODO: scrape dev.to based on your tags
      puts 'inside devToScrape'
      @doc = Nokogiri::HTML(URI.open('https://dev.to/t/javascript'))
      @titles = []

      @doc.css('.single-article').each do |link|
        # puts link
        @urls = link.css('.index-article-link')[0]['href']
        @avatar = link.css('.small-pic').css('img').attr('src').text
        @read_time = link.css('.article-reading-time').text
        @titles.push({title: link.css('a').css('.content').css('h3').text, link: @urls, avatar: @avatar, time: @read_time}) 
      end
        return @titles
    end
  end
end
