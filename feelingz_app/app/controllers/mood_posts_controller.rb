class MoodPostsController < ApplicationController
  before_action :set_mood_post, only: [:show, :edit, :update, :destroy]

  # GET /mood_posts
  # GET /mood_posts.json
  def index
    @mood_posts = MoodPost.all
  end

  # GET /mood_posts/1
  # GET /mood_posts/1.json
  def show
  end

  # GET /mood_posts/new
  def new
    @mood_post = MoodPost.new
  end

  # GET /mood_posts/1/edit
  def edit
  end

  # POST /mood_posts
  # POST /mood_posts.json
  def create
    @mood_post = MoodPost.new(mood_post_params)

    respond_to do |format|
      if @mood_post.save
        format.html { redirect_to @mood_post, notice: 'Mood post was successfully created.' }
        format.json { render :show, status: :created, location: @mood_post }
      else
        format.html { render :new }
        format.json { render json: @mood_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mood_posts/1
  # PATCH/PUT /mood_posts/1.json
  def update
    respond_to do |format|
      if @mood_post.update(mood_post_params)
        format.html { redirect_to @mood_post, notice: 'Mood post was successfully updated.' }
        format.json { render :show, status: :ok, location: @mood_post }
      else
        format.html { render :edit }
        format.json { render json: @mood_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mood_posts/1
  # DELETE /mood_posts/1.json
  def destroy
    @mood_post.destroy
    respond_to do |format|
      format.html { redirect_to mood_posts_url, notice: 'Mood post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mood_post
      @mood_post = MoodPost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mood_post_params
      params.require(:mood_post).permit(:img_url, :emotion, :mood, :journal)
    end
end
