require 'test_helper'

class Opw00003sControllerTest < ActionController::TestCase
  setup do
    @opw00003 = opw00003s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:opw00003s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create opw00003" do
    assert_difference('Opw00003.count') do
      post :create, opw00003: { account_number: @opw00003.account_number, estimation_deposition_property: @opw00003.estimation_deposition_property, search_date: @opw00003.search_date }
    end

    assert_redirected_to opw00003_path(assigns(:opw00003))
  end

  test "should show opw00003" do
    get :show, id: @opw00003
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @opw00003
    assert_response :success
  end

  test "should update opw00003" do
    patch :update, id: @opw00003, opw00003: { account_number: @opw00003.account_number, estimation_deposition_property: @opw00003.estimation_deposition_property, search_date: @opw00003.search_date }
    assert_redirected_to opw00003_path(assigns(:opw00003))
  end

  test "should destroy opw00003" do
    assert_difference('Opw00003.count', -1) do
      delete :destroy, id: @opw00003
    end

    assert_redirected_to opw00003s_path
  end
end
