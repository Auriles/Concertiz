class PagesController < ApplicationController

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
