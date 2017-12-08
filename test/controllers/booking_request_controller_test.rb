require 'test_helper'

class BookingRequestControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get booking_request_new_url
    assert_response :success
  end

  test "should get show" do
    get booking_request_show_url
    assert_response :success
  end

end
