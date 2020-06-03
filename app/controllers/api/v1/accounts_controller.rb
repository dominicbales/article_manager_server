module Api::V1
  class AccountsController < ApplicationController
    before_action :set_account, only: [ :update, :destroy]

    # Create an account
    def create
      @user = User.find(params[:account][:user_id])
      puts "user is: #{@user}"
      puts "inside create "
      @account = @user.accounts.new(account_params)
      

      # @account = Account.new(account_params)
      puts "account is: #{@account}"
      if @account.save
        puts 'account created'
        render json: @account
      else
        puts 'account not create'
        render json: {msg: "Account couldn't be created!"}
      end

      # if params[:url].include? 'dev.to'
        # @test = RequestData.fetch(params[:url], RequestType::Scrape)
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

    def show
      puts 'inside show'
      @accounts = Account.where({user_id: params[:id]})
      if @accounts.length > 0
        render json:  @accounts
      else
        render json: {msg: 'No accounts could be found for this user'}
      end
    end

    def update
      puts 'inside update'
      if @account.update(account_params)
        render json: @account
      else
        render json: @account.errors, status: :unprocessable_entity
      end
    end

    def destroy
      @account.destroy
    end

    private

    def set_account
      @account = Account.find(params[:id])
    end

    def account_params
      params.require(:account).permit(:url, :user_id)
    end


  end
end