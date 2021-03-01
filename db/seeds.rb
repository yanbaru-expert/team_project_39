require 'csv'

header_option = {headers: true}
EMAIL = 'test@example.com'
PASSWORD = 'password'
ADMIN_EMAIL = 'admin@example.com'
# 管理者パスワードとメールアドレスは変更済み

# テストユーザーが存在しないときだけ作成
User.find_or_create_by!(email: EMAIL) do |user|
  user.password = PASSWORD
  puts 'ユーザーの初期データインポートに成功しました。'
end

#管理者が存在しない時だけ新規作成 
AdminUser.find_or_create_by!(email: ADMIN_EMAIL) do |admin_user|
   admin_user.password = PASSWORD
   puts '管理者の初期データインポートに成功しました。'
end

# テキストモデルのデータをインポート
Text.destroy_all

# ファイルパス取得
text_file_path = 'db/csv_data/text_data.csv'
text_list = []

CSV.foreach(text_file_path, header_option) do |row|
  text_list << row.to_h
end

Text.create!(text_list)
puts  'テキストモデルの初期データインポートに成功しました。'

# ムービーモデルのデータをインポート（初期化）
Movie.destroy_all

# ファイルパス取得
movie_file_path = 'db/csv_data/movie_data.csv'
movie_list = []

CSV.foreach(movie_file_path, header_option) do |row|
  movie_list << row.to_h
end

Movie.create!(movie_list)
puts  'ムービーモデルの初期データインポートに成功しました。'