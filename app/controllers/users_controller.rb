class UsersController < ApplicationController

    def new
        #signup form
    end

    def create
        #creates a new user
        user = User.new(user_params)
        if user.save
            session[:user_id] = User.last.id
        else
            binding.pry
            redirect_to controller: 'users', action: 'new'
        end
    end

    private
    
    def user_params
        params.require(:user).permit(:name, :password, :password_confirmation)
    end
end
