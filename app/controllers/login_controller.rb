class LoginController < ApplicationController
  skip_before_action :check_logined

  layout false

  def index
  session[:usrname] = nil
  session[:usr] = nil
  end

  def auth
  usr = User.authenticate(params[:user_name],params[:mailadd])
    if usr then
      reset_session
      session[:usr] = usr.id
      session[:usrname] = usr.user_name
      redirect_to params[:referer]
    else
      flash.now[:referer] = params[:referer]
      @error = 'グループ名/パスワードが間違っています。'
      render 'index'
    end
  end
end