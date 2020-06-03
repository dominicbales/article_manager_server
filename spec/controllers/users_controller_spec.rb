require 'rails_helper'

# Change this ArticlesController to your project
RSpec.describe UsersController, type: :controller do
    describe "GET users#index" do
      it "return all users" do
        get '/'
      end
    end
end