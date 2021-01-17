class RemoveCompleteFlgFromTextProgresses < ActiveRecord::Migration[6.0]
  def change
    remove_column :text_progresses, :complete_flg, :boolean
  end
end
