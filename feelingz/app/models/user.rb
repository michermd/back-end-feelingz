class User < ApplicationRecord
  validates :user_name, uniqueness: true
  validates :first_name, :last_name, :user_name, :password, presence: true
  has_many :mood_post
end
