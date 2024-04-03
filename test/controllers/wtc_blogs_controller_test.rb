require "test_helper"

class WtcBlogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @wtc_blog = wtc_blogs(:one)
  end

  test "should get index" do
    get wtc_blogs_url, as: :json
    assert_response :success
  end

  test "should create wtc_blog" do
    assert_difference("WtcBlog.count") do
      post wtc_blogs_url, params: { wtc_blog: { author: @wtc_blog.author, avatar: @wtc_blog.avatar, body: @wtc_blog.body, date: @wtc_blog.date, title: @wtc_blog.title } }, as: :json
    end

    assert_response :created
  end

  test "should show wtc_blog" do
    get wtc_blog_url(@wtc_blog), as: :json
    assert_response :success
  end

  test "should update wtc_blog" do
    patch wtc_blog_url(@wtc_blog), params: { wtc_blog: { author: @wtc_blog.author, avatar: @wtc_blog.avatar, body: @wtc_blog.body, date: @wtc_blog.date, title: @wtc_blog.title } }, as: :json
    assert_response :success
  end

  test "should destroy wtc_blog" do
    assert_difference("WtcBlog.count", -1) do
      delete wtc_blog_url(@wtc_blog), as: :json
    end

    assert_response :no_content
  end
end
