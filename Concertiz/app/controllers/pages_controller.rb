class PagesController < ApplicationController

  def profile
    @titre = "Profile"
  end

  def index
    @titre = "Index"
  end

  def login
    @titre = "Login"
  end

  def concerts
    @titre = "Concerts"
  end

  def register
    @titre = "Register"
  end
end
