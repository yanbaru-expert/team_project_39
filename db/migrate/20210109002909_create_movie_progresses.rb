class CreateMovieProgresses < ActiveRecord::Migration[6.0]
  def change
    create_table :movie_progresses do |t|
      t.references :user, null: false, foreign_key: true, index: false, comment: "ユーザーID"
      t.references :movie, null: false, foreign_key: true, index: false, comment: "動画ID"
      t.boolean :complete_flg, null: false, default: false, comment: "進捗ステータス"

      t.timestamps
    end
    add_index :movie_progresses, %W(user_id movie_id), unique: true
  end
end
