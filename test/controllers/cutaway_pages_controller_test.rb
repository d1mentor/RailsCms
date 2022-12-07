require "test_helper"

class CutawayPagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cutaway_page = cutaway_pages(:one)
  end

  test "should get index" do
    get cutaway_pages_url
    assert_response :success
  end

  test "should get new" do
    get new_cutaway_page_url
    assert_response :success
  end

  test "should create cutaway_page" do
    assert_difference("CutawayPage.count") do
      post cutaway_pages_url, params: { cutaway_page: { parent_id: @cutaway_page.parent_id } }
    end

    assert_redirected_to cutaway_page_url(CutawayPage.last)
  end

  test "should show cutaway_page" do
    get cutaway_page_url(@cutaway_page)
    assert_response :success
  end

  test "should get edit" do
    get edit_cutaway_page_url(@cutaway_page)
    assert_response :success
  end

  test "should update cutaway_page" do
    patch cutaway_page_url(@cutaway_page), params: { cutaway_page: { parent_id: @cutaway_page.parent_id } }
    assert_redirected_to cutaway_page_url(@cutaway_page)
  end

  test "should destroy cutaway_page" do
    assert_difference("CutawayPage.count", -1) do
      delete cutaway_page_url(@cutaway_page)
    end

    assert_redirected_to cutaway_pages_url
  end
end
