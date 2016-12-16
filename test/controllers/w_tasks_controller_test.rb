require 'test_helper'

class WTasksControllerTest < ActionController::TestCase
  setup do
    @w_task = w_tasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:w_tasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create w_task" do
    assert_difference('WTask.count') do
      post :create, w_task: { date: @w_task.date, important: @w_task.important, name: @w_task.name }
    end

    assert_redirected_to w_task_path(assigns(:w_task))
  end

  test "should show w_task" do
    get :show, id: @w_task
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @w_task
    assert_response :success
  end

  test "should update w_task" do
    patch :update, id: @w_task, w_task: { date: @w_task.date, important: @w_task.important, name: @w_task.name }
    assert_redirected_to w_task_path(assigns(:w_task))
  end

  test "should destroy w_task" do
    assert_difference('WTask.count', -1) do
      delete :destroy, id: @w_task
    end

    assert_redirected_to w_tasks_path
  end
end
