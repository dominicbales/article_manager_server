require 'nokogiri'
require 'open-uri'

class DevToScraper < ArticleDataFetcher
  def grab(account)
    puts 'inside devToScrape'
    @doc = Nokogiri::HTML(URI.open('https://dev.to/t/javascript'))
    @titles = []

    @doc.css('.single-article').each do |link|
      # puts link
      @urls = link.css('.index-article-link')[0]['href']
      @avatar = link.css('.small-pic').css('img').attr('src').text
      @read_time = link.css('.article-reading-time').text
      @titles.push({title: link.css('a').css('.content').css('h3').text, link: @urls, avatar: @avatar, time: @read_time, account_id: account.id}) 
    end
    @titles
  end
end