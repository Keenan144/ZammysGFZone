class UsersController < ApplicationController
  before_action :save_my_previous_url 


  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(current_user.id)
  end

  def login
    user = User.koala(request.env['omniauth.auth']['credentials'])
    if @user = User.find_by(username: user["name"]) 
      log_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to root_url
    else
      @user = User.new(username: user["name"].to_s, password: user["id"].to_s)
      @user.update(last_login: DateTime.now)
      @user.update(login_count: @user.login_count += 1)

        request.env['HTTP_X_FORWARDED_FOR']
        request.remote_ip 
        request.env['REMOTE_ADDR']
        @user.update(ipaddress: request.ip)


      if @user.save
        log_in @user
        flash[:success] = "Welcome to the Sample App!"
        redirect_to root_url
      else
        render 'new'
      end
    end
  end

  # GET /users/new
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    @user.update(last_login: DateTime.now)
    @user.update(login_count: @user.login_count += 1)

      request.env['HTTP_X_FORWARDED_FOR']
      request.remote_ip 
      request.env['REMOTE_ADDR']
      @user.update(ipaddress: request.ip)


    if @user.save
      log_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to root_url
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:success] = "Profile updated"
      redirect_to @user
    else
      render 'edit'
    end
  end

  def logged_in_user
    unless logged_in?
      store_location
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end

  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless current_user?(@user)
  end
  private

  def user_params
    params.require(:user).permit(:username, :password )
  end

  def save_my_previous_url
      # session[:previous_url] is a Rails built-in variable to save last url.
      session[:my_previous_url] = URI(request.referer || '').path
      @back_url = session[:my_previous_url]
    end
end

