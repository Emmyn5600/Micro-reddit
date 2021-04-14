require "test_helper"

class Post2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post2 = post2s(:one)
  end

  test "should get index" do
    get post2s_url
    assert_response :success
  end

  test "should get new" do
    get new_post2_url
    assert_response :success
  end

  test "should create post2" do
    assert_difference('Post2.count') do
      post post2s_url, params: { post2: { author_id: @post2.author_id, commentary_id: @post2.commentary_id, content: @post2.content, title: @post2.title } }
    end

    assert_redirected_to post2_url(Post2.last)
  end

  test "should show post2" do
    get post2_url(@post2)
    assert_response :success
  end

  test "should get edit" do
    get edit_post2_url(@post2)
    assert_response :success
  end

  test "should update post2" do
    patch post2_url(@post2), params: { post2: { author_id: @post2.author_id, commentary_id: @post2.commentary_id, content: @post2.content, title: @post2.title } }
    assert_redirected_to post2_url(@post2)
  end

  test "should destroy post2" do
    assert_difference('Post2.count', -1) do
      delete post2_url(@post2)
    end

    assert_redirected_to post2s_url
  end
end
