require "application_system_test_case"

class JoggingsTest < ApplicationSystemTestCase
  setup do
    @jogging = joggings(:one)
  end

  test "visiting the index" do
    visit joggings_url
    assert_selector "h1", text: "Joggings"
  end

  test "should create jogging" do
    visit joggings_url
    click_on "New jogging"

    fill_in "Date", with: @jogging.date
    fill_in "Distance", with: @jogging.distance
    fill_in "Time", with: @jogging.time
    click_on "Create Jogging"

    assert_text "Jogging was successfully created"
    click_on "Back"
  end

  test "should update Jogging" do
    visit jogging_url(@jogging)
    click_on "Edit this jogging", match: :first

    fill_in "Date", with: @jogging.date
    fill_in "Distance", with: @jogging.distance
    fill_in "Time", with: @jogging.time
    click_on "Update Jogging"

    assert_text "Jogging was successfully updated"
    click_on "Back"
  end

  test "should destroy Jogging" do
    visit jogging_url(@jogging)
    click_on "Destroy this jogging", match: :first

    assert_text "Jogging was successfully destroyed"
  end
end
