require "test_helper"

class ExtensionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @extension = extensions(:one)
  end

  test "should get index" do
    get extensions_url
    assert_response :success
  end

  test "should get new" do
    get new_extension_url
    assert_response :success
  end

  test "should create extension" do
    assert_difference("Extension.count") do
      post extensions_url, params: { extension: { subtitle: @extension.subtitle, title: @extension.title } }
    end

    assert_redirected_to extension_url(Extension.last)
  end

  test "should show extension" do
    get extension_url(@extension)
    assert_response :success
  end

  test "should get edit" do
    get edit_extension_url(@extension)
    assert_response :success
  end

  test "should update extension" do
    patch extension_url(@extension), params: { extension: { subtitle: @extension.subtitle, title: @extension.title } }
    assert_redirected_to extension_url(@extension)
  end

  test "should destroy extension" do
    assert_difference("Extension.count", -1) do
      delete extension_url(@extension)
    end

    assert_redirected_to extensions_url
  end
end
