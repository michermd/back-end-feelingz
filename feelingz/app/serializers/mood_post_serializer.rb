class MoodPostSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :img_url, :emotion, :mood, :activity, :journal, :created_at, :updated_at
  belongs_to :user
end
