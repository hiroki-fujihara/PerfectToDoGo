require 'test_helper'

class FinTasksControllerTest < ActionController::TestCase
  setup do
    @fin_task = fin_tasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fin_tasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fin_task" do
    assert_difference('FinTask.count') do
      post :create, fin_task: { fin_day: @fin_task.fin_day, task_id: @fin_task.task_id }
    end

    assert_redirected_to fin_task_path(assigns(:fin_task))
  end

  test "should show fin_task" do
    get :show, id: @fin_task
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fin_task
    assert_response :success
  end

  test "should update fin_task" do
    patch :update, id: @fin_task, fin_task: { fin_day: @fin_task.fin_day, task_id: @fin_task.task_id }
    assert_redirected_to fin_task_path(assigns(:fin_task))
  end

  test "should destroy fin_task" do
    assert_difference('FinTask.count', -1) do
      delete :destroy, id: @fin_task
    end

    assert_redirected_to fin_tasks_path
  end
end
