class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :user_name, :password, :created_at, :updated_at
  has_many :mood_posts
end
