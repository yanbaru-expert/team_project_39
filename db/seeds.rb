require 'csv'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

EMAIL = 'test@example.com'
PASSWORD = 'password'

# テストユーザーが存在しないときだけ作成
User.find_or_create_by!(email: EMAIL) do |user|
  user.password = PASSWORD
  puts 'ユーザーの初期データインポートに成功しました。'
end

# テキストモデルのデータをインポート
Text.destroy_all

# ファイルパス取得
text_file_path = 'db/csv_data/text_data.csv'
option = {headers: true}
text_list = []

CSV.foreach(text_file_path, option) do |row|
  text_list << row.to_h
end

Text.create!(text_list)
puts  'テキストモデルの初期データインポートに成功しました。'