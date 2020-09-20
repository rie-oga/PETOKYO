require 'test_helper'

class Member::SpotsControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get member_spots_top_url
    assert_response :success
  end

  test "should get index" do
    get member_spots_index_url
    assert_response :success
  end

  test "should get show" do
    get member_spots_show_url
    assert_response :success
  end

end
