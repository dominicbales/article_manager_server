require 'nokogiri'
require 'open-uri'

class DevToScraper < ArticleDataFetcher
  def grab(account)
    puts 'inside devToScrape'
    @doc = Nokogiri::HTML(URI.open('https://dev.to/t/javascript'))
    # puts "docs are #{@doc}"
    @titles = []

    @doc.css('.crayons-story').each do |link|
      puts "****links: #{link}******"
      @title = link.css('.crayons-story__title')[0].css('a').text
      # puts "title are1: #{link.css('.crayons-story__title')[0].css('a').text}"
      @urls = link.css('.crayons-story__title').css('a')[0]['href']
      # puts "link are 1: #{link.css('.crayons-story__title').css('a')[0]['href']}" 
      # puts "avatar: #{link.css('.crayons-avatar').css('img').attr('src').text}"
      @avatar = link.css('.crayons-avatar').css('img').attr('src').text
      # puts "reading time: #{link.css('.crayons-story__tertiary').text}"
      # @read_time = link.css('.crayons-story__tertiary').text
      @read_time = "5 min"
      @titles.push({title: @title, link: @urls, avatar: @avatar, time: @read_time, account_id: account.id}) 
    end
    puts "Titles found are #{@titles}"
    @titles
  end
end