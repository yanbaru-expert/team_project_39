class TextsController < ApplicationController
  PER_PAGE = 10

  def index
    genre_list = ["Basic", "Git", "HTML&CSS", "Ruby", "Ruby on Rails"]
    @search = Text.where(genre: genre_list).ransack(params[:q])
    @texts = @search.result.page(params[:page]).per(PER_PAGE)
  end

  def show
    @text = Text.find(params[:id])
  end
end
