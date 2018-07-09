require 'test_helper'

class CatalogusControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get catalogus_index_url
    assert_response :success
  end

  test "should get show" do
    get catalogus_show_url
    assert_response :success
  end

end
