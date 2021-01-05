class TextsController < ApplicationController
  def index
    genre_list = ["Basic", "Git", "HTML&CSS", "Ruby", "Ruby on Rails"]
    @texts = Text.where(genre: genre_list)
  end

  def show
    @text = Text.find(params[:id])
  end
end
