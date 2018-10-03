class MoodPost < ApplicationRecord
  validates :img_url, :emotion, :mood, :activity, :journal, presence: true
  belongs_to :user
end
