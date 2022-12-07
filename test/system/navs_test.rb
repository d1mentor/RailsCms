require "application_system_test_case"

class NavsTest < ApplicationSystemTestCase
  setup do
    @nav = navs(:one)
  end

  test "visiting the index" do
    visit navs_url
    assert_selector "h1", text: "Navs"
  end

  test "should create nav" do
    visit navs_url
    click_on "New nav"

    check "Active" if @nav.active
    fill_in "Code", with: @nav.code
    fill_in "Language", with: @nav.language_id
    fill_in "Name", with: @nav.name
    click_on "Create Nav"

    assert_text "Nav was successfully created"
    click_on "Back"
  end

  test "should update Nav" do
    visit nav_url(@nav)
    click_on "Edit this nav", match: :first

    check "Active" if @nav.active
    fill_in "Code", with: @nav.code
    fill_in "Language", with: @nav.language_id
    fill_in "Name", with: @nav.name
    click_on "Update Nav"

    assert_text "Nav was successfully updated"
    click_on "Back"
  end

  test "should destroy Nav" do
    visit nav_url(@nav)
    click_on "Destroy this nav", match: :first

    assert_text "Nav was successfully destroyed"
  end
end
