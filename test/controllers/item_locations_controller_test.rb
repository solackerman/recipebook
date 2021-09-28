require "test_helper"

class ItemLocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @item_location = item_locations(:one)
  end

  test "should get index" do
    get item_locations_url
    assert_response :success
  end

  test "should get new" do
    get new_item_location_url
    assert_response :success
  end

  test "should create item_location" do
    assert_difference('ItemLocation.count') do
      post item_locations_url, params: { item_location: { grocery_item_id: @item_location.grocery_item_id, section: @item_location.section, store: @item_location.store } }
    end

    assert_redirected_to item_location_url(ItemLocation.last)
  end

  test "should show item_location" do
    get item_location_url(@item_location)
    assert_response :success
  end

  test "should get edit" do
    get edit_item_location_url(@item_location)
    assert_response :success
  end

  test "should update item_location" do
    patch item_location_url(@item_location), params: { item_location: { grocery_item_id: @item_location.grocery_item_id, section: @item_location.section, store: @item_location.store } }
    assert_redirected_to item_location_url(@item_location)
  end

  test "should destroy item_location" do
    assert_difference('ItemLocation.count', -1) do
      delete item_location_url(@item_location)
    end

    assert_redirected_to item_locations_url
  end
end
