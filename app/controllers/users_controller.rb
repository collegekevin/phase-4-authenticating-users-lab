class UsersController < ApplicationController

def show
    user = User.find_by(id: session[:user])
   # if user
        render json: user
    # else 
    #     render json: { error: "Not authorized" }, status: :unauthorzed
    # end
end

end
