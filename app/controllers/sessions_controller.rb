class SessionsController < ApplicationController

  def index
  end

  def create
    auth = request.env["omniauth.auth"]
    user = User.find_by_provider_and_uid(auth[:provider], auth[:uid]) || User.create_with_omniauth(auth)
    session[:user_id] = user.id
    facebook_user_token = auth[:credentials][:token]
    if auth[:provider] == "facebook"
      session[:token] = facebook_user_token
      redirect_to session_path(facebook_user_token)
    else
      session[:id] = auth[:info][:name]
      redirect_to session_path(auth[:info][:name])
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

  def show
    if params[:id].length > 30    
      user = FbGraph::User.new('me', :access_token => session[:token] )#params[:id])#auth[:credentials][:token])
      @user = user.statuses
    else
      @home = Twitter.home_timeline
      puts "******************************************"
      puts @home.inspect
      @timeline = Twitter.user_timeline( session[:id] )#params[:id])#(auth[:info][:name])
      puts "******************************************"
      puts @timeline.inspect
    end    
  end

  def omniauth_failure
    redirect_to root_path
  end
end
