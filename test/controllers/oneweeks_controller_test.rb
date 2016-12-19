require 'test_helper'

class OneweeksControllerTest < ActionController::TestCase
  setup do
    @oneweek = oneweeks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:oneweeks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create oneweek" do
    assert_difference('Oneweek.count') do
      post :create, oneweek: { file: @oneweek.file, important: @oneweek.important, name: @oneweek.name, renge: @oneweek.renge }
    end

    assert_redirected_to oneweek_path(assigns(:oneweek))
  end

  test "should show oneweek" do
    get :show, id: @oneweek
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @oneweek
    assert_response :success
  end

  test "should update oneweek" do
    patch :update, id: @oneweek, oneweek: { file: @oneweek.file, important: @oneweek.important, name: @oneweek.name, renge: @oneweek.renge }
    assert_redirected_to oneweek_path(assigns(:oneweek))
  end

  test "should destroy oneweek" do
    assert_difference('Oneweek.count', -1) do
      delete :destroy, id: @oneweek
    end

    assert_redirected_to oneweeks_path
  end
end
