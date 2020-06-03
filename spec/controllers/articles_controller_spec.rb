require 'rails_helper'

# Change this ArticlesController to your project
RSpec.describe ArticlesController, type: :controller do
    describe "GET articles#index" do
      it "return all articles" do
        get '/'
      end
    end
end