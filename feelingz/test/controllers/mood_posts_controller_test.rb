require 'test_helper'

class MoodPostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mood_post = mood_posts(:one)
  end

  test "should get index" do
    get mood_posts_url, as: :json
    assert_response :success
  end

  test "should create mood_post" do
    assert_difference('MoodPost.count') do
      post mood_posts_url, params: { mood_post: { emotion: @mood_post.emotion, img_url: @mood_post.img_url, journal: @mood_post.journal, mood: @mood_post.mood, user_id: @mood_post.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show mood_post" do
    get mood_post_url(@mood_post), as: :json
    assert_response :success
  end

  test "should update mood_post" do
    patch mood_post_url(@mood_post), params: { mood_post: { emotion: @mood_post.emotion, img_url: @mood_post.img_url, journal: @mood_post.journal, mood: @mood_post.mood, user_id: @mood_post.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy mood_post" do
    assert_difference('MoodPost.count', -1) do
      delete mood_post_url(@mood_post), as: :json
    end

    assert_response 204
  end
end
