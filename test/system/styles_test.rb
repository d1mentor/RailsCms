require "application_system_test_case"

class StylesTest < ApplicationSystemTestCase
  setup do
    @style = styles(:one)
  end

  test "visiting the index" do
    visit styles_url
    assert_selector "h1", text: "Styles"
  end

  test "should create style" do
    visit styles_url
    click_on "New style"

    check "As file" if @style.as_file
    fill_in "Code", with: @style.code
    fill_in "Description", with: @style.description
    check "For all pages" if @style.for_all_pages
    fill_in "Link tag", with: @style.link_tag
    click_on "Create Style"

    assert_text "Style was successfully created"
    click_on "Back"
  end

  test "should update Style" do
    visit style_url(@style)
    click_on "Edit this style", match: :first

    check "As file" if @style.as_file
    fill_in "Code", with: @style.code
    fill_in "Description", with: @style.description
    check "For all pages" if @style.for_all_pages
    fill_in "Link tag", with: @style.link_tag
    click_on "Update Style"

    assert_text "Style was successfully updated"
    click_on "Back"
  end

  test "should destroy Style" do
    visit style_url(@style)
    click_on "Destroy this style", match: :first

    assert_text "Style was successfully destroyed"
  end
end
