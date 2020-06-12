# frozen_string_literal: true

require "spec_helper"
require "rails_helper"

# Change this ArticlesController to your project
RSpec.describe Api::V1::UsersController, type: :controller do 
    let(:user) {create(:user)}

    describe "GET users#index" do
      let(:user_params_mock) { FactoryBot.attributes_for(:user) }

      it "returns all users" do 
        test_user = User.create(user_params_mock)
        get :index
        expect(JSON.parse(response.body).length).to eq(1)
      end
    end
    
    describe "POST users#create" do
      let(:user_params_mock) { FactoryBot.attributes_for(:user) }

      it "creates a user" do
        post :create, params: { user: user_params_mock }
        test_user = JSON.parse(response.body)
        expect(test_user['id']).to eq(user_params_mock[:id])        
      end
    end
end