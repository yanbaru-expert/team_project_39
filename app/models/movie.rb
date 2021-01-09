class Movie < ApplicationRecord
  # モデル関連付け
  has_many :movie_progresses, dependent: :destroy
  has_many :users, through: :movie_progresses
  validates :genre, presence: true
  validates :title, presence: true
  validates :url, presence: true
end
