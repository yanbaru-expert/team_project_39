class TextsController < ApplicationController
  PER_PAGE = 10
  def index
    genre_list = ["Basic", "Git", "HTML&CSS", "Ruby", "Ruby on Rails"]

    @search = Text.ransack(genre: genre_list)
    @texts = @search.result.page(params[:page]).per(PER_PAGE)
  end

end
