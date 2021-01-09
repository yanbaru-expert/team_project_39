class User < ApplicationRecord
  has_many :text_progresses, dependent: :destroy
  has_many :texts, through: :text_progresses

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
