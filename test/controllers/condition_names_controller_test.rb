require 'test_helper'

class ConditionNamesControllerTest < ActionController::TestCase
  setup do
    @condition_name = condition_names(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:condition_names)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create condition_name" do
    assert_difference('ConditionName.count') do
      post :create, condition_name: { condition_name: @condition_name.condition_name, nIndex: @condition_name.nIndex }
    end

    assert_redirected_to condition_name_path(assigns(:condition_name))
  end

  test "should show condition_name" do
    get :show, id: @condition_name
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @condition_name
    assert_response :success
  end

  test "should update condition_name" do
    patch :update, id: @condition_name, condition_name: { condition_name: @condition_name.condition_name, nIndex: @condition_name.nIndex }
    assert_redirected_to condition_name_path(assigns(:condition_name))
  end

  test "should destroy condition_name" do
    assert_difference('ConditionName.count', -1) do
      delete :destroy, id: @condition_name
    end

    assert_redirected_to condition_names_path
  end
end
