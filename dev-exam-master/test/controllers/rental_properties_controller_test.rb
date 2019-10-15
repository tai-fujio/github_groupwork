require 'test_helper'

class RentalPropertiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rental_property = rental_properties(:one)
  end

  test "should get index" do
    get rental_properties_url
    assert_response :success
  end

  test "should get new" do
    get new_rental_property_url
    assert_response :success
  end

  test "should create rental_property" do
    assert_difference('RentalProperty.count') do
      post rental_properties_url, params: { rental_property: { house_age: @rental_property.house_age, property_name: @rental_property.property_name, remarks: @rental_property.remarks, rent: @rental_property.rent, street_address: @rental_property.street_address } }
    end

    assert_redirected_to rental_property_url(RentalProperty.last)
  end

  test "should show rental_property" do
    get rental_property_url(@rental_property)
    assert_response :success
  end

  test "should get edit" do
    get edit_rental_property_url(@rental_property)
    assert_response :success
  end

  test "should update rental_property" do
    patch rental_property_url(@rental_property), params: { rental_property: { house_age: @rental_property.house_age, property_name: @rental_property.property_name, remarks: @rental_property.remarks, rent: @rental_property.rent, street_address: @rental_property.street_address } }
    assert_redirected_to rental_property_url(@rental_property)
  end

  test "should destroy rental_property" do
    assert_difference('RentalProperty.count', -1) do
      delete rental_property_url(@rental_property)
    end

    assert_redirected_to rental_properties_url
  end
end
