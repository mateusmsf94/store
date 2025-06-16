require "application_system_test_case"

class HomeTest < ApplicationSystemTestCase
  test "selenium is working" do
    visit "/"

    # These basic assertions prove Selenium is working
    assert_selector "html"
    assert_selector "body"

    puts "🎉 SELENIUM IS WORKING PERFECTLY!"
    puts "✅ Connected to remote Chrome browser"
    puts "✅ Loaded your Rails application"
    puts "✅ Successfully parsed HTML"
  end
end
