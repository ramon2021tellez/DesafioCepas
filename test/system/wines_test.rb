require "application_system_test_case"

class WinesTest < ApplicationSystemTestCase
  setup do
    @wine = wines(:one)
  end

  test "visiting the index" do
    visit wines_url
    assert_selector "h1", text: "Wines"
  end

  test "should create wine" do
    visit wines_url
    click_on "New wine"

    fill_in "Name", with: @wine.name
    click_on "Create Wine"

    assert_text "Wine was successfully created"
    click_on "Back"
  end

  test "should update Wine" do
    visit wine_url(@wine)
    click_on "Edit this wine", match: :first

    fill_in "Name", with: @wine.name
    click_on "Update Wine"

    assert_text "Wine was successfully updated"
    click_on "Back"
  end

  test "should destroy Wine" do
    visit wine_url(@wine)
    click_on "Destroy this wine", match: :first

    assert_text "Wine was successfully destroyed"
  end
end
