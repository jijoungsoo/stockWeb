require 'test_helper'

class ScreenInfosControllerTest < ActionController::TestCase
  setup do
    @screen_info = screen_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:screen_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create screen_info" do
    assert_difference('ScreenInfo.count') do
      post :create, screen_info: { rq_name: @screen_info.rq_name, screen_number: @screen_info.screen_number, tr_code: @screen_info.tr_code }
    end

    assert_redirected_to screen_info_path(assigns(:screen_info))
  end

  test "should show screen_info" do
    get :show, id: @screen_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @screen_info
    assert_response :success
  end

  test "should update screen_info" do
    patch :update, id: @screen_info, screen_info: { rq_name: @screen_info.rq_name, screen_number: @screen_info.screen_number, tr_code: @screen_info.tr_code }
    assert_redirected_to screen_info_path(assigns(:screen_info))
  end

  test "should destroy screen_info" do
    assert_difference('ScreenInfo.count', -1) do
      delete :destroy, id: @screen_info
    end

    assert_redirected_to screen_infos_path
  end
end
