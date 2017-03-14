require 'test_helper'

class AdministrateControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get administrate_index_url
    assert_response :success
  end

end
