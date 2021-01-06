class MoviesController < ApplicationController
  PER_PAGE = 5
  def index
    genre_list = %W(Basic Git HTML&CSS Ruby Ruby on Rails)
    @movies = Movie.where(genre: genre_list).page(params[:page]).per(PER_PAGE)
  end
end
