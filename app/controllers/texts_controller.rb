class TextsController < ApplicationController
  def index
    # genre_list = ["Basic", "Git", "HTML&CSS", "Ruby", "Ruby on Rails"]
    # @texts = Text.where(genre: genre_list)

    @texts = ["Basic", "Git", "HTML&CSS", "Ruby", "Ruby on Rails"]
  end
end
