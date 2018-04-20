class SessionsController < ApplicationController
  def new
    # if session[:name]
    #   redirect_to '/'
    #
    # else
    #   redirect_to '/sessions/new'
    # end
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/sessions/new'
    else
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/login'
  end
end
