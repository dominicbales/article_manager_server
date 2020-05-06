module Api::V1
  class UsersController < ApplicationController
    before_action :set_user, only: [:show, :update, :destroy]
  
    # GET /users
    def index
      @users = User.all
  
      render json: @users
    end
  
    # GET /tests/1
    # def show
    #   render json: @test
    # end
  
    # POST /users
    def create
      @user = User.new(user_params)
  
      if @user.save
        render json: @user, status: :created
      else
        render json: @user.errors, status: :unprocessable_entity
      end
    end
  
    # PATCH/PUT /tests/1
    # def update
    #   if @test.update(test_params)
    #     render json: @test
    #   else
    #     render json: @test.errors, status: :unprocessable_entity
    #   end
    # end
  
    # DELETE /tests/1
    # def destroy
    #   @test.destroy
    # end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_user
        @user = User.find(params[:id])
      end
  
      # Only allow a trusted parameter "white list" through.
      def user_params
        params.require(:user).permit(:username, :email, :password, :password_confirmation)
      end
  end
  
end