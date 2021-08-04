require 'test_helper'

class IssuingCountriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @issuing_country = issuing_countries(:one)
  end

  test "should get index" do
    get issuing_countries_url
    assert_response :success
  end

  test "should get new" do
    get new_issuing_country_url
    assert_response :success
  end

  test "should create issuing_country" do
    assert_difference('IssuingCountry.count') do
      post issuing_countries_url, params: { issuing_country: { current_country_name: @issuing_country.current_country_name, listing_id: @issuing_country.listing_id, old_country_name: @issuing_country.old_country_name } }
    end

    assert_redirected_to issuing_country_url(IssuingCountry.last)
  end

  test "should show issuing_country" do
    get issuing_country_url(@issuing_country)
    assert_response :success
  end

  test "should get edit" do
    get edit_issuing_country_url(@issuing_country)
    assert_response :success
  end

  test "should update issuing_country" do
    patch issuing_country_url(@issuing_country), params: { issuing_country: { current_country_name: @issuing_country.current_country_name, listing_id: @issuing_country.listing_id, old_country_name: @issuing_country.old_country_name } }
    assert_redirected_to issuing_country_url(@issuing_country)
  end

  test "should destroy issuing_country" do
    assert_difference('IssuingCountry.count', -1) do
      delete issuing_country_url(@issuing_country)
    end

    assert_redirected_to issuing_countries_url
  end
end
