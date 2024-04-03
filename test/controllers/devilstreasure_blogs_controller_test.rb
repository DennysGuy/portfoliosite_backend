require "test_helper"

class DevilstreasureBlogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @devilstreasure_blog = devilstreasure_blogs(:one)
  end

  test "should get index" do
    get devilstreasure_blogs_url, as: :json
    assert_response :success
  end

  test "should create devilstreasure_blog" do
    assert_difference("DevilstreasureBlog.count") do
      post devilstreasure_blogs_url, params: { devilstreasure_blog: { author: @devilstreasure_blog.author, avatar: @devilstreasure_blog.avatar, body: @devilstreasure_blog.body, date: @devilstreasure_blog.date, title: @devilstreasure_blog.title } }, as: :json
    end

    assert_response :created
  end

  test "should show devilstreasure_blog" do
    get devilstreasure_blog_url(@devilstreasure_blog), as: :json
    assert_response :success
  end

  test "should update devilstreasure_blog" do
    patch devilstreasure_blog_url(@devilstreasure_blog), params: { devilstreasure_blog: { author: @devilstreasure_blog.author, avatar: @devilstreasure_blog.avatar, body: @devilstreasure_blog.body, date: @devilstreasure_blog.date, title: @devilstreasure_blog.title } }, as: :json
    assert_response :success
  end

  test "should destroy devilstreasure_blog" do
    assert_difference("DevilstreasureBlog.count", -1) do
      delete devilstreasure_blog_url(@devilstreasure_blog), as: :json
    end

    assert_response :no_content
  end
end
