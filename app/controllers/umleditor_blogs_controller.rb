class UmleditorBlogsController < ApplicationController
  before_action :set_umleditor_blog, only: %i[ show update destroy ]

  # GET /umleditor_blogs
  def index
    @umleditor_blogs = UmleditorBlog.all

    render json: @umleditor_blogs
  end

  # GET /umleditor_blogs/1
  def show
    render json: @umleditor_blog
  end

  # POST /umleditor_blogs
  def create
    @umleditor_blog = UmleditorBlog.new(umleditor_blog_params)

    if @umleditor_blog.save
      render json: @umleditor_blog, status: :created, location: @umleditor_blog
    else
      render json: @umleditor_blog.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /umleditor_blogs/1
  def update
    if @umleditor_blog.update(umleditor_blog_params)
      render json: @umleditor_blog
    else
      render json: @umleditor_blog.errors, status: :unprocessable_entity
    end
  end

  # DELETE /umleditor_blogs/1
  def destroy
    @umleditor_blog.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_umleditor_blog
      @umleditor_blog = UmleditorBlog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def umleditor_blog_params
      params.require(:umleditor_blog).permit(:title, :body, :author, :avatar, :date)
    end
end
