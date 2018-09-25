class MoodPostSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :id, :user_id, :img_url, :emotion, :mood, :journal, :created_at, :updated_at
end
