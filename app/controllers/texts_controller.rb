class TextsController < ApplicationController
  PER_PAGE = 10
  def index
    genre_list = ["Basic", "Git", "HTML&CSS", "Ruby", "Ruby on Rails"]
    @texts = Text.where(genre: genre_list).page(params[:page]).per(PER_PAGE)
    
    @q = Text.ransack(params[:q])
    @text = @q.result.page(params[:page]).per(PER_PAGE)
  end
end
