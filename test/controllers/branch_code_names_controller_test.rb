require 'test_helper'

class BranchCodeNamesControllerTest < ActionController::TestCase
  setup do
    @branch_code_name = branch_code_names(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:branch_code_names)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create branch_code_name" do
    assert_difference('BranchCodeName.count') do
      post :create, branch_code_name: { branch_code: @branch_code_name.branch_code, branch_name: @branch_code_name.branch_name }
    end

    assert_redirected_to branch_code_name_path(assigns(:branch_code_name))
  end

  test "should show branch_code_name" do
    get :show, id: @branch_code_name
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @branch_code_name
    assert_response :success
  end

  test "should update branch_code_name" do
    patch :update, id: @branch_code_name, branch_code_name: { branch_code: @branch_code_name.branch_code, branch_name: @branch_code_name.branch_name }
    assert_redirected_to branch_code_name_path(assigns(:branch_code_name))
  end

  test "should destroy branch_code_name" do
    assert_difference('BranchCodeName.count', -1) do
      delete :destroy, id: @branch_code_name
    end

    assert_redirected_to branch_code_names_path
  end
end
