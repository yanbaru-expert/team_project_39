class MoviesController < ApplicationController
  def index
    # 取得対象ジャンル
    genre_list = %W(Basic Git HTML&CSS Ruby Ruby on Rails)
    @movies = Movie.where(genre: genre_list)
  end
end
