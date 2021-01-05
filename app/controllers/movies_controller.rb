class MoviesController < ApplicationController
  PER_PAGE = 10
  def index
    genre_list = %W(Basic Git HTML&CSS Ruby Ruby on Rails)
    @movies = Movie.where(genre: genre_list)
    @movies = Movie.page(params[:page]).per(PER_PAGE)
  end
end
