class DevilstreasureBlogsController < ApplicationController
  before_action :set_devilstreasure_blog, only: %i[ show update destroy ]

  # GET /devilstreasure_blogs
  def index
    @devilstreasure_blogs = DevilstreasureBlog.all

    render json: @devilstreasure_blogs
  end

  # GET /devilstreasure_blogs/1
  def show
    render json: @devilstreasure_blog
  end

  # POST /devilstreasure_blogs
  def create
    @devilstreasure_blog = DevilstreasureBlog.new(devilstreasure_blog_params)

    if @devilstreasure_blog.save
      render json: @devilstreasure_blog, status: :created, location: @devilstreasure_blog
    else
      render json: @devilstreasure_blog.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /devilstreasure_blogs/1
  def update
    if @devilstreasure_blog.update(devilstreasure_blog_params)
      render json: @devilstreasure_blog
    else
      render json: @devilstreasure_blog.errors, status: :unprocessable_entity
    end
  end

  # DELETE /devilstreasure_blogs/1
  def destroy
    @devilstreasure_blog.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_devilstreasure_blog
      @devilstreasure_blog = DevilstreasureBlog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def devilstreasure_blog_params
      params.require(:devilstreasure_blog).permit(:title, :body, :author, :avatar, :date)
    end
end
