class SessionsController < ApplicationController

    def create
     user = User.find_by(username: params[:username])
     session[user] = user.id 
     render json: user
    end
  
    def destroy
        sessions.delete :user
        head :no_content
    end

end
