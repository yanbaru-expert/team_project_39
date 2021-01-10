class Text < ApplicationRecord
  has_many :text_progresses, dependent: :destroy
  has_many :users, through: :text_progresses

  validates :genre, presence: true
  validates :title, presence: true
  validates :content, presence: true
end
