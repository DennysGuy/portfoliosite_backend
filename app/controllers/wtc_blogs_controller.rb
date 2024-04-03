class WtcBlogsController < ApplicationController
  before_action :set_wtc_blog, only: %i[ show update destroy ]

  # GET /wtc_blogs
  def index
    @wtc_blogs = WtcBlog.all

    render json: @wtc_blogs
  end

  # GET /wtc_blogs/1
  def show
    render json: @wtc_blog
  end

  # POST /wtc_blogs
  def create
    @wtc_blog = WtcBlog.new(wtc_blog_params)

    if @wtc_blog.save
      render json: @wtc_blog, status: :created, location: @wtc_blog
    else
      render json: @wtc_blog.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /wtc_blogs/1
  def update
    if @wtc_blog.update(wtc_blog_params)
      render json: @wtc_blog
    else
      render json: @wtc_blog.errors, status: :unprocessable_entity
    end
  end

  # DELETE /wtc_blogs/1
  def destroy
    @wtc_blog.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wtc_blog
      @wtc_blog = WtcBlog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def wtc_blog_params
      params.require(:wtc_blog).permit(:title, :body, :author, :avatar, :date)
    end
end
