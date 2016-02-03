require 'test_helper'

class KiwoomApiTest <ActiveSupport::TestCase
  setup do
  end


  test "should get_code_list_by_market" do
	kiwoomApi = KiwoomApi.new()
	tmp=kiwoomApi.get_code_list_by_market('0')
	#puts tmp
	# assert_redirected_to stock_path(assigns(:stock))
  end
end
