class GLoginController < ApplicationController
  def index
  end

  def index
  session[:ksks] = nil
  session[:gro] = nil
  end

  def auth
  usr = User.authenticate(params[:user_name],params[:mailadd])
    if usr then
      reset_session
      session[:gro] = gro.id
      session[:usrname] = gro.user_name
      redirect_to params[:referer]
    else
      flash.now[:referer] = params[:referer]
      @error = 'ユーザーID/メールアドレスが間違っています。'
      render 'index'
    end
  end
end
