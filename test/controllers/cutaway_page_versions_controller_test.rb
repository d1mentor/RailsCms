require "test_helper"

class CutawayPageVersionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cutaway_page_version = cutaway_page_versions(:one)
  end

  test "should get index" do
    get cutaway_page_versions_url
    assert_response :success
  end

  test "should get new" do
    get new_cutaway_page_version_url
    assert_response :success
  end

  test "should create cutaway_page_version" do
    assert_difference("CutawayPageVersion.count") do
      post cutaway_page_versions_url, params: { cutaway_page_version: { body: @cutaway_page_version.body, cutaway_page_id: @cutaway_page_version.cutaway_page_id, header: @cutaway_page_version.header, images: @cutaway_page_version.images, index: @cutaway_page_version.index, language_id: @cutaway_page_version.language_id, name: @cutaway_page_version.name, route_link: @cutaway_page_version.route_link, visible: @cutaway_page_version.visible } }
    end

    assert_redirected_to cutaway_page_version_url(CutawayPageVersion.last)
  end

  test "should show cutaway_page_version" do
    get cutaway_page_version_url(@cutaway_page_version)
    assert_response :success
  end

  test "should get edit" do
    get edit_cutaway_page_version_url(@cutaway_page_version)
    assert_response :success
  end

  test "should update cutaway_page_version" do
    patch cutaway_page_version_url(@cutaway_page_version), params: { cutaway_page_version: { body: @cutaway_page_version.body, cutaway_page_id: @cutaway_page_version.cutaway_page_id, header: @cutaway_page_version.header, images: @cutaway_page_version.images, index: @cutaway_page_version.index, language_id: @cutaway_page_version.language_id, name: @cutaway_page_version.name, route_link: @cutaway_page_version.route_link, visible: @cutaway_page_version.visible } }
    assert_redirected_to cutaway_page_version_url(@cutaway_page_version)
  end

  test "should destroy cutaway_page_version" do
    assert_difference("CutawayPageVersion.count", -1) do
      delete cutaway_page_version_url(@cutaway_page_version)
    end

    assert_redirected_to cutaway_page_versions_url
  end
end
