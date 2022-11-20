require "test_helper"

class BookkeepControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get bookkeep_index_url
    assert_response :success
  end
end
