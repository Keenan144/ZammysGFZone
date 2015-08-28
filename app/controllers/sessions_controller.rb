class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(username: params[:session][:username].downcase)
    if user && user.authenticate(params[:session][:password])
      p ":)    " * 1000
      log_in user
      user.update(last_login: DateTime.now)
      user.update(login_count: user.login_count += 1)
      params[:session][:remember_me] == '1' ? remember(user) : forget(user)
      redirect_to root_url

      views = SystemMetric.first.logins
     SystemMetric.first.update(logins: views + 1)
    else
      p "!" * 1000
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end