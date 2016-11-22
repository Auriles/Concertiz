class PagesController < ApplicationController
skip_before_action :require_login, only: [:home, :concerts, :profile]

  def register
    @title = "Register"
  end

  def login
    @title = "Login"
  end

  def profile
    @title = "Profile"
  end

  def home
    @title = "Home"
    @shows = Show.all
    @searches = Search.all
    @searches = Show.where("artist LIKE ?", "%#{params[:query]}%")
  end

  def concerts
    @title = "Concerts"
    @shows = Show.all
  end
end
