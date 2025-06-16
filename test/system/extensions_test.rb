require "application_system_test_case"

class ExtensionsTest < ApplicationSystemTestCase
  setup do
    @extension = extensions(:one)
  end

  test "visiting the index" do
    visit extensions_url
    assert_selector "h1", text: "Extensions"
  end

  test "should create extension" do
    visit extensions_url
    click_on "New extension"

    fill_in "Subtitle", with: @extension.subtitle
    fill_in "Title", with: @extension.title
    click_on "Create Extension"

    assert_text "Extension was successfully created"
    click_on "Back"
  end

  test "should update Extension" do
    visit extension_url(@extension)
    click_on "Edit this extension", match: :first

    fill_in "Subtitle", with: @extension.subtitle
    fill_in "Title", with: @extension.title
    click_on "Update Extension"

    assert_text "Extension was successfully updated"
    click_on "Back"
  end

  test "should destroy Extension" do
    visit extension_url(@extension)
    click_on "Destroy this extension", match: :first

    assert_text "Extension was successfully destroyed"
  end
end
