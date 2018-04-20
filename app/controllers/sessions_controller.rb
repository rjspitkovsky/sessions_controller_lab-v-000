class SessionsController < ApplicationController
  def new
    if session[:name]
      redirect_to '/'

    else
      redirect_to '/sessions/new'
    end
  end

  def create
    if params[:name]
      session[:name] = params[:name]
    else
      redirect_to '/sessions/new'
    end
  end

  def destroy
    session[:name].destroy
  end
end
