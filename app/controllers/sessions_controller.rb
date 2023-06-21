class SessionsController < ApplicationController

    def new   
    end

    def create
        user = User.find_by(username: params[:session][:username])
        if user && user.authenticate(params[:session][:password])
          session[:user_id] = user.id
          flash[:success] = "Logged in successfully"
          redirect_to root_path
        else
          flash.now[:error] = "There was something wrong with your login detail."
          render :new
        end
    end

    def destroy
          session[:user_id] = nil
          flash[:success] = "You have successfully logged out."
          redirect_to login_path
          # respond_to do |format|
          #   format.html { redirect_to login_path, notice: "You have successfully logged out." }
          #   format.json { head :no_content }
          # end
    end

end
