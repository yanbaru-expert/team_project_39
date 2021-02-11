class MovieProgressesController < ApplicationController
  def create
    current_user.movie_progresses.create(movie_id: params[:movie_id])
  end

  def destroy
    current_user.movie_progresses.find_by(movie_id: params[:movie_id]).destroy
  end
end
