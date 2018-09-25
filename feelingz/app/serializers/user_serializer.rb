class UserSerializer < ActiveModel::Serializer
  has_many :mood_post
  attributes :id, :first_name, :last_name, :user_name, :password, :created_at, :updated_at
end
