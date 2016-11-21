class UserSessionsController < ApplicationController
  skip_before_action :require_login, except: [:destroy]
  def new
    @user = User.new
  end

  def create
    u = User.where(email: params[:email]).first
    p u
    p login(params[:email], params[:password])
    if login(params[:email], params[:password])
      p "coucou"
      redirect_to(:users, notice: 'Login successful')
    else
      p "else"
      flash.now[:alert] = 'Login failed'
      render action: 'new'
    end
  end

  def destroy
    logout
    redirect_to(:users, notice: 'Logged out!')
  end
end
