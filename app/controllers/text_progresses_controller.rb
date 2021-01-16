class TextProgressesController < ApplicationController
  def create
    current_user.text_progresses.create(text_id: params[:text_id])
  end

  def destroy
    current_user.text_progresses.find_by(text_id: params[:text_id]).destroy
  end
end
