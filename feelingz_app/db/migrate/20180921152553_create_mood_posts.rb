class CreateMoodPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :mood_posts do |t|
      t.string :img_url
      t.string :emotion
      t.string :mood
      t.string :journal

      t.timestamps
    end
  end
end
