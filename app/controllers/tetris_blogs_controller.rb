class TetrisBlogsController < ApplicationController
  before_action :set_tetris_blog, only: %i[ show update destroy ]

  # GET /tetris_blogs
  def index
    @tetris_blogs = TetrisBlog.all

    render json: @tetris_blogs
  end

  # GET /tetris_blogs/1
  def show
    render json: @tetris_blog
  end

  # POST /tetris_blogs
  def create
    @tetris_blog = TetrisBlog.new(tetris_blog_params)

    if @tetris_blog.save
      render json: @tetris_blog, status: :created, location: @tetris_blog
    else
      render json: @tetris_blog.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tetris_blogs/1
  def update
    if @tetris_blog.update(tetris_blog_params)
      render json: @tetris_blog
    else
      render json: @tetris_blog.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tetris_blogs/1
  def destroy
    @tetris_blog.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tetris_blog
      @tetris_blog = TetrisBlog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tetris_blog_params
      params.require(:tetris_blog).permit(:title, :body, :author, :avatar, :date)
    end
end
