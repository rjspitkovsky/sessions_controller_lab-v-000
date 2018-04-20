class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:username]
      session[:username] = params[:username]
    else
      redirect to '/new'
    end 
  end

  def destroy
    session.destroy :username
  end
end
