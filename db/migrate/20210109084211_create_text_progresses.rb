class CreateTextProgresses < ActiveRecord::Migration[6.0]
  def change
    create_table :text_progresses do |t|
      t.boolean :complete_flg, null: false, default: false
      t.references :user, null: false, foreign_key: true
      t.references :text, null: false, foreign_key: true

      t.timestamps
    end
    add_index :text_progresses, [:user_id, :text_id], unique: true
  end
end
