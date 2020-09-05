class SessionsController < ApplicationController

    def new

    end
    def create
        @user = User.find_by(name: params[:user][:name])
        password = params[:user][:password]
        if @user && @user.authenticate(password)
            session[:user_id] = @user.id 
            redirect_to "/"
        else
        end        
    end
    def destroy
        session.delete :name
    end
end
