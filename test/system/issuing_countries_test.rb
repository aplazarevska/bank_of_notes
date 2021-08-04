require "application_system_test_case"

class IssuingCountriesTest < ApplicationSystemTestCase
  setup do
    @issuing_country = issuing_countries(:one)
  end

  test "visiting the index" do
    visit issuing_countries_url
    assert_selector "h1", text: "Issuing Countries"
  end

  test "creating a Issuing country" do
    visit issuing_countries_url
    click_on "New Issuing Country"

    fill_in "Current country name", with: @issuing_country.current_country_name
    fill_in "Listing", with: @issuing_country.listing_id
    fill_in "Old country name", with: @issuing_country.old_country_name
    click_on "Create Issuing country"

    assert_text "Issuing country was successfully created"
    click_on "Back"
  end

  test "updating a Issuing country" do
    visit issuing_countries_url
    click_on "Edit", match: :first

    fill_in "Current country name", with: @issuing_country.current_country_name
    fill_in "Listing", with: @issuing_country.listing_id
    fill_in "Old country name", with: @issuing_country.old_country_name
    click_on "Update Issuing country"

    assert_text "Issuing country was successfully updated"
    click_on "Back"
  end

  test "destroying a Issuing country" do
    visit issuing_countries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Issuing country was successfully destroyed"
  end
end
