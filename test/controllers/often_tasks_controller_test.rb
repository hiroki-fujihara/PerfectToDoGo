require 'test_helper'

class OftenTasksControllerTest < ActionController::TestCase
  setup do
    @often_task = often_tasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:often_tasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create often_task" do
    assert_difference('OftenTask.count') do
      post :create, often_task: { name: @often_task.name }
    end

    assert_redirected_to often_task_path(assigns(:often_task))
  end

  test "should show often_task" do
    get :show, id: @often_task
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @often_task
    assert_response :success
  end

  test "should update often_task" do
    patch :update, id: @often_task, often_task: { name: @often_task.name }
    assert_redirected_to often_task_path(assigns(:often_task))
  end

  test "should destroy often_task" do
    assert_difference('OftenTask.count', -1) do
      delete :destroy, id: @often_task
    end

    assert_redirected_to often_tasks_path
  end
end
