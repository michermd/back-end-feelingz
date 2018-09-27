class MoodPost < ApplicationRecord
  validates :img_url, :emotion, :mood, :journal, presence: true
  belongs_to :user
end
