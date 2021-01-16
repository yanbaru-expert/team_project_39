class RemoveCompleteFlgFromMovieProgresses < ActiveRecord::Migration[6.0]
  def change
    remove_column :movie_progresses, :complete_flg, :boolean
  end
end