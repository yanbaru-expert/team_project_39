class MovieProgress < ApplicationRecord
  # モデル関連付け
  belongs_to :user
  belongs_to :movie
end
