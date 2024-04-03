require "test_helper"

class TetrisBlogsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tetris_blog = tetris_blogs(:one)
  end

  test "should get index" do
    get tetris_blogs_url, as: :json
    assert_response :success
  end

  test "should create tetris_blog" do
    assert_difference("TetrisBlog.count") do
      post tetris_blogs_url, params: { tetris_blog: { author: @tetris_blog.author, avatar: @tetris_blog.avatar, body: @tetris_blog.body, date: @tetris_blog.date, title: @tetris_blog.title } }, as: :json
    end

    assert_response :created
  end

  test "should show tetris_blog" do
    get tetris_blog_url(@tetris_blog), as: :json
    assert_response :success
  end

  test "should update tetris_blog" do
    patch tetris_blog_url(@tetris_blog), params: { tetris_blog: { author: @tetris_blog.author, avatar: @tetris_blog.avatar, body: @tetris_blog.body, date: @tetris_blog.date, title: @tetris_blog.title } }, as: :json
    assert_response :success
  end

  test "should destroy tetris_blog" do
    assert_difference("TetrisBlog.count", -1) do
      delete tetris_blog_url(@tetris_blog), as: :json
    end

    assert_response :no_content
  end
end
