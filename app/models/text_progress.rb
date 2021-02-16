class TextProgress < ApplicationRecord
  belongs_to :user
  belongs_to :text
  validates :text, uniqueness: { scope: :user }
end
