require "test_helper"

class StylesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @style = styles(:one)
  end

  test "should get index" do
    get styles_url
    assert_response :success
  end

  test "should get new" do
    get new_style_url
    assert_response :success
  end

  test "should create style" do
    assert_difference("Style.count") do
      post styles_url, params: { style: { as_file: @style.as_file, code: @style.code, description: @style.description, for_all_pages: @style.for_all_pages, link_tag: @style.link_tag } }
    end

    assert_redirected_to style_url(Style.last)
  end

  test "should show style" do
    get style_url(@style)
    assert_response :success
  end

  test "should get edit" do
    get edit_style_url(@style)
    assert_response :success
  end

  test "should update style" do
    patch style_url(@style), params: { style: { as_file: @style.as_file, code: @style.code, description: @style.description, for_all_pages: @style.for_all_pages, link_tag: @style.link_tag } }
    assert_redirected_to style_url(@style)
  end

  test "should destroy style" do
    assert_difference("Style.count", -1) do
      delete style_url(@style)
    end

    assert_redirected_to styles_url
  end
end
