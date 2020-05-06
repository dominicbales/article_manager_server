module Api::V1
  class ArticlesController < ApplicationController
    # Create a new article 
    def create
      puts "Welcome to creating articles"
         # if params[:url].include? 'dev.to'
      #   @test = RequestData.fetch(params[:url], RequestType::Scrape)
      #   if @test
      #     @test.each do |title|
  
      #       # puts "test is: #{title[:link]}" 
      #       # puts "title is : #{title}"
      #       @article = Article.create(title: title[:title], link: title[:link], avatar: title[:avatar], time: title[:time])
      #       @article.save
      #     end
        



      #     # @article = Article.new(article_params)
      #     puts "Article has been created"
      #   end
       
      # else
      #   @test2 = RequestData.fetch(params[:url], RequestType::Api)
      # end
      # render json: {msg: 'welcome to api', test: @test}
    end

    def index
      @article = Article.all
      render json: @article
    end
  end
end