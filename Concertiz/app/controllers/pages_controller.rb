class PagesController < ApplicationController
skip_before_action :require_login, only: [:home, :concerts, :profile]

  def register
    @titre = "Register"
  end

  def login
    @titre = "Login"
  end

  def profile
    @titre = "Profile"
  end

  def home
    @titre = "Home"
  end

  def concerts
    @titre = "Concerts"
  end
end
