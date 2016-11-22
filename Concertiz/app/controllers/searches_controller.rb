class SearchesController < ApplicationController
  def index
    @searches = Show.where("artist LIKE ?", "%#{params[:query]}%")
  end
end
