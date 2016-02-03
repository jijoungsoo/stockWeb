require 'test_helper'

class ThemeGroupsControllerTest < ActionController::TestCase
  setup do
    @theme_group = theme_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:theme_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create theme_group" do
    assert_difference('ThemeGroup.count') do
      post :create, theme_group: {  }
    end

    assert_redirected_to theme_group_path(assigns(:theme_group))
  end

  test "should show theme_group" do
    get :show, id: @theme_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @theme_group
    assert_response :success
  end

  test "should update theme_group" do
    patch :update, id: @theme_group, theme_group: {  }
    assert_redirected_to theme_group_path(assigns(:theme_group))
  end

  test "should destroy theme_group" do
    assert_difference('ThemeGroup.count', -1) do
      delete :destroy, id: @theme_group
    end

    assert_redirected_to theme_groups_path
  end
end
