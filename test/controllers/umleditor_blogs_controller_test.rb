require "test_helper"

class UmleditorBlogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @umleditor_blog = umleditor_blogs(:one)
  end

  test "should get index" do
    get umleditor_blogs_url, as: :json
    assert_response :success
  end

  test "should create umleditor_blog" do
    assert_difference("UmleditorBlog.count") do
      post umleditor_blogs_url, params: { umleditor_blog: { author: @umleditor_blog.author, avatar: @umleditor_blog.avatar, body: @umleditor_blog.body, date: @umleditor_blog.date, title: @umleditor_blog.title } }, as: :json
    end

    assert_response :created
  end

  test "should show umleditor_blog" do
    get umleditor_blog_url(@umleditor_blog), as: :json
    assert_response :success
  end

  test "should update umleditor_blog" do
    patch umleditor_blog_url(@umleditor_blog), params: { umleditor_blog: { author: @umleditor_blog.author, avatar: @umleditor_blog.avatar, body: @umleditor_blog.body, date: @umleditor_blog.date, title: @umleditor_blog.title } }, as: :json
    assert_response :success
  end

  test "should destroy umleditor_blog" do
    assert_difference("UmleditorBlog.count", -1) do
      delete umleditor_blog_url(@umleditor_blog), as: :json
    end

    assert_response :no_content
  end
end
