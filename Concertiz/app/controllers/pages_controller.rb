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
end
