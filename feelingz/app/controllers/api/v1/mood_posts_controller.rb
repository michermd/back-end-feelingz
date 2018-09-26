class Api::V1::MoodPostsController < ApplicationController
  before_action :set_mood_post, only: [:show, :update, :destroy]

  # GET /mood_posts
  def index
    @mood_posts = MoodPost.all

    render json: @mood_posts
  end

  # GET /mood_posts/1
  def show
    render json: @mood_post
  end

  # POST /mood_posts
  def create
    @mood_post = MoodPost.new(mood_post_params)

    if @mood_post.save
      render json: @mood_post, status: :created, location: @mood_post
    else
      render json: @mood_post.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /mood_posts/1
  def update
    if @mood_post.update(mood_post_params)
      render json: @mood_post
    else
      render json: @mood_post.errors, status: :unprocessable_entity
    end
  end

  # DELETE /mood_posts/1
  def destroy
    @mood_post.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mood_post
      @mood_post = MoodPost.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def mood_post_params
      params.require(:mood_post).permit(:user_id, :img_url, :emotion, :mood, :journal)
    end
end
