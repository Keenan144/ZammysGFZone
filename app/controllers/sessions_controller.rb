class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(username: params[:session][:username])
    if user && user.authenticate(params[:session][:password])
      log_in user

      request.env['HTTP_X_FORWARDED_FOR']
      request.remote_ip 
      request.env['REMOTE_ADDR']
      user.update(ipaddress: request.ip)

      user.update(last_login: DateTime.now)
      user.update(login_count: user.login_count += 1)
      params[:session][:remember_me] == '1' ? remember(user) : forget(user)
      redirect_to root_url

      views = SystemMetric.first.logins
     SystemMetric.first.update(logins: views + 1)
    else

      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end
end