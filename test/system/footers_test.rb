require "application_system_test_case"

class FootersTest < ApplicationSystemTestCase
  setup do
    @footer = footers(:one)
  end

  test "visiting the index" do
    visit footers_url
    assert_selector "h1", text: "Footers"
  end

  test "should create footer" do
    visit footers_url
    click_on "New footer"

    check "Active" if @footer.active
    fill_in "Code", with: @footer.code
    fill_in "Language", with: @footer.language_id
    fill_in "Name", with: @footer.name
    click_on "Create Footer"

    assert_text "Footer was successfully created"
    click_on "Back"
  end

  test "should update Footer" do
    visit footer_url(@footer)
    click_on "Edit this footer", match: :first

    check "Active" if @footer.active
    fill_in "Code", with: @footer.code
    fill_in "Language", with: @footer.language_id
    fill_in "Name", with: @footer.name
    click_on "Update Footer"

    assert_text "Footer was successfully updated"
    click_on "Back"
  end

  test "should destroy Footer" do
    visit footer_url(@footer)
    click_on "Destroy this footer", match: :first

    assert_text "Footer was successfully destroyed"
  end
end
