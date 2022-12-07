require "application_system_test_case"

class CutawayPagesTest < ApplicationSystemTestCase
  setup do
    @cutaway_page = cutaway_pages(:one)
  end

  test "visiting the index" do
    visit cutaway_pages_url
    assert_selector "h1", text: "Cutaway pages"
  end

  test "should create cutaway page" do
    visit cutaway_pages_url
    click_on "New cutaway page"

    fill_in "Parent", with: @cutaway_page.parent_id
    click_on "Create Cutaway page"

    assert_text "Cutaway page was successfully created"
    click_on "Back"
  end

  test "should update Cutaway page" do
    visit cutaway_page_url(@cutaway_page)
    click_on "Edit this cutaway page", match: :first

    fill_in "Parent", with: @cutaway_page.parent_id
    click_on "Update Cutaway page"

    assert_text "Cutaway page was successfully updated"
    click_on "Back"
  end

  test "should destroy Cutaway page" do
    visit cutaway_page_url(@cutaway_page)
    click_on "Destroy this cutaway page", match: :first

    assert_text "Cutaway page was successfully destroyed"
  end
end
