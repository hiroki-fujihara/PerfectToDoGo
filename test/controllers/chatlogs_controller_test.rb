require 'test_helper'

class ChatlogsControllerTest < ActionController::TestCase
  setup do
    @chatlog = chatlogs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chatlogs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chatlog" do
    assert_difference('Chatlog.count') do
      post :create, chatlog: { content: @chatlog.content, group_id: @chatlog.group_id, user_id: @chatlog.user_id }
    end

    assert_redirected_to chatlog_path(assigns(:chatlog))
  end

  test "should show chatlog" do
    get :show, id: @chatlog
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chatlog
    assert_response :success
  end

  test "should update chatlog" do
    patch :update, id: @chatlog, chatlog: { content: @chatlog.content, group_id: @chatlog.group_id, user_id: @chatlog.user_id }
    assert_redirected_to chatlog_path(assigns(:chatlog))
  end

  test "should destroy chatlog" do
    assert_difference('Chatlog.count', -1) do
      delete :destroy, id: @chatlog
    end

    assert_redirected_to chatlogs_path
  end
end
