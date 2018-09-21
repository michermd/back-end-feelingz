require 'test_helper'

class MoodPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mood_post = mood_posts(:one)
  end

  test "should get index" do
    get mood_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_mood_post_url
    assert_response :success
  end

  test "should create mood_post" do
    assert_difference('MoodPost.count') do
      post mood_posts_url, params: { mood_post: { emotion: @mood_post.emotion, img_url: @mood_post.img_url, journal: @mood_post.journal, mood: @mood_post.mood } }
    end

    assert_redirected_to mood_post_url(MoodPost.last)
  end

  test "should show mood_post" do
    get mood_post_url(@mood_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_mood_post_url(@mood_post)
    assert_response :success
  end

  test "should update mood_post" do
    patch mood_post_url(@mood_post), params: { mood_post: { emotion: @mood_post.emotion, img_url: @mood_post.img_url, journal: @mood_post.journal, mood: @mood_post.mood } }
    assert_redirected_to mood_post_url(@mood_post)
  end

  test "should destroy mood_post" do
    assert_difference('MoodPost.count', -1) do
      delete mood_post_url(@mood_post)
    end

    assert_redirected_to mood_posts_url
  end
end
