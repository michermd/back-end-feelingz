json.extract! mood_post, :id, :img_url, :emotion, :mood, :journal, :created_at, :updated_at
json.url mood_post_url(mood_post, format: :json)
