require "application_system_test_case"

class TwerksTest < ApplicationSystemTestCase
  setup do
    @twerk = twerks(:one)
  end

  test "visiting the index" do
    visit twerks_url
    assert_selector "h1", text: "Twerks"
  end

  test "creating a Twerk" do
    visit twerks_url
    click_on "New Twerk"

    fill_in "Twerk", with: @twerk.twerk
    click_on "Create Twerk"

    assert_text "Twerk was successfully created"
    click_on "Back"
  end

  test "updating a Twerk" do
    visit twerks_url
    click_on "Edit", match: :first

    fill_in "Twerk", with: @twerk.twerk
    click_on "Update Twerk"

    assert_text "Twerk was successfully updated"
    click_on "Back"
  end

  test "destroying a Twerk" do
    visit twerks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Twerk was successfully destroyed"
  end
end
