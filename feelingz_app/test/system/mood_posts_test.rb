require "application_system_test_case"

class MoodPostsTest < ApplicationSystemTestCase
  setup do
    @mood_post = mood_posts(:one)
  end

  test "visiting the index" do
    visit mood_posts_url
    assert_selector "h1", text: "Mood Posts"
  end

  test "creating a Mood post" do
    visit mood_posts_url
    click_on "New Mood Post"

    fill_in "Emotion", with: @mood_post.emotion
    fill_in "Img Url", with: @mood_post.img_url
    fill_in "Journal", with: @mood_post.journal
    fill_in "Mood", with: @mood_post.mood
    click_on "Create Mood post"

    assert_text "Mood post was successfully created"
    click_on "Back"
  end

  test "updating a Mood post" do
    visit mood_posts_url
    click_on "Edit", match: :first

    fill_in "Emotion", with: @mood_post.emotion
    fill_in "Img Url", with: @mood_post.img_url
    fill_in "Journal", with: @mood_post.journal
    fill_in "Mood", with: @mood_post.mood
    click_on "Update Mood post"

    assert_text "Mood post was successfully updated"
    click_on "Back"
  end

  test "destroying a Mood post" do
    visit mood_posts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mood post was successfully destroyed"
  end
end
