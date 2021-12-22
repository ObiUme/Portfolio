class UsersController < ApplicationController
    
    def index
        users = User.all
        render json: users
    end

    def create 
        user = User.create!(user_params)
        render json: user, status: :created
    end

    def update
        user = User.find_by(id: session[:user_id])
        user.update!(user_params)
        render json: user, status: :accepted
    end

    private

    def user_params
        params.permit(:username, :password, :is_admin )
    end
end
