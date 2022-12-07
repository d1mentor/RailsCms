require "application_system_test_case"

class CutawayPageVersionsTest < ApplicationSystemTestCase
  setup do
    @cutaway_page_version = cutaway_page_versions(:one)
  end

  test "visiting the index" do
    visit cutaway_page_versions_url
    assert_selector "h1", text: "Cutaway page versions"
  end

  test "should create cutaway page version" do
    visit cutaway_page_versions_url
    click_on "New cutaway page version"

    fill_in "Body", with: @cutaway_page_version.body
    fill_in "Cutaway page", with: @cutaway_page_version.cutaway_page_id
    fill_in "Header", with: @cutaway_page_version.header
    fill_in "Images", with: @cutaway_page_version.images
    check "Index" if @cutaway_page_version.index
    fill_in "Language", with: @cutaway_page_version.language_id
    fill_in "Name", with: @cutaway_page_version.name
    fill_in "Route link", with: @cutaway_page_version.route_link
    check "Visible" if @cutaway_page_version.visible
    click_on "Create Cutaway page version"

    assert_text "Cutaway page version was successfully created"
    click_on "Back"
  end

  test "should update Cutaway page version" do
    visit cutaway_page_version_url(@cutaway_page_version)
    click_on "Edit this cutaway page version", match: :first

    fill_in "Body", with: @cutaway_page_version.body
    fill_in "Cutaway page", with: @cutaway_page_version.cutaway_page_id
    fill_in "Header", with: @cutaway_page_version.header
    fill_in "Images", with: @cutaway_page_version.images
    check "Index" if @cutaway_page_version.index
    fill_in "Language", with: @cutaway_page_version.language_id
    fill_in "Name", with: @cutaway_page_version.name
    fill_in "Route link", with: @cutaway_page_version.route_link
    check "Visible" if @cutaway_page_version.visible
    click_on "Update Cutaway page version"

    assert_text "Cutaway page version was successfully updated"
    click_on "Back"
  end

  test "should destroy Cutaway page version" do
    visit cutaway_page_version_url(@cutaway_page_version)
    click_on "Destroy this cutaway page version", match: :first

    assert_text "Cutaway page version was successfully destroyed"
  end
end
