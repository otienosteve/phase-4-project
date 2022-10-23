class UsersController < ApplicationController
    def create
    user=User.create!(user_params)
    render json: user
    end
    def show
        user=User.find_by(id:session[:id])
        if user
            render json: user
        else 
        render json: {error: "Not authorized"}
        end
    end

    private 
    def user_params 
        params.permit(:username,:password)
    end
end
