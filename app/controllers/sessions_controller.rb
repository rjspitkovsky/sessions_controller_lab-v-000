class SessionsController < ApplicationController
  def new
    if params[:username]
      redirect_to '/'
    end 
  end

  def create
    if params[:username]
      session[:username] = params[:username]
    else
      redirect_to '/new'
    end
  end

  def destroy
    session.destroy :username
  end
end
