class TextsController < ApplicationController
  PER_PAGE = 10
  def index
    genre_list = ["Basic", "Git", "HTML&CSS", "Ruby", "Ruby on Rails"]
    @texts = Text.where(genre: genre_list)
    @texts = Text.page(params[:page]).per(PER_PAGE)
  end
end
