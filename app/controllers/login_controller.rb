class LoginController < ApplicationController
  skip_before_action :check_logined

  layout false

  def index
  session[:usr] = nil
  end

  def auth
  usr = User.authenticate(params[:user_name],params[:mailadd])
    if usr then
      reset_session
      session[:usr] = usr.id
      redirect_to params[:referer]
    else
      flash.now[:referer] = params[:referer]
      @error = 'ユーザーID/メールアドレスが間違っています。'
      render 'index'
    end
  end
end