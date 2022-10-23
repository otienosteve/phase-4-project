class SessionsController < ApplicationController
    def create
        user= User.find_by(username: params[:username])
        session[:user_id]=user.id
        render json: session[:user_id]
    end
    def show
        user=User.find_by(id: session[:user_id])
        render json: user
    end

    def destroy

    session.delete :user_id
    render json: {logout: "user loggged out successfully"}

    end

end
