require 'test_helper'

class AccountControllerTest < ActionController::TestCase
  test "should get balance" do
    get :balance
    assert_response :success
  end

end
