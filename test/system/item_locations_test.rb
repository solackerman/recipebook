require "application_system_test_case"

class ItemLocationsTest < ApplicationSystemTestCase
  setup do
    @item_location = item_locations(:one)
  end

  test "visiting the index" do
    visit item_locations_url
    assert_selector "h1", text: "Item Locations"
  end

  test "creating a Item location" do
    visit item_locations_url
    click_on "New Item Location"

    fill_in "Grocery item", with: @item_location.grocery_item_id
    fill_in "Section", with: @item_location.section
    fill_in "Store", with: @item_location.store
    click_on "Create Item location"

    assert_text "Item location was successfully created"
    click_on "Back"
  end

  test "updating a Item location" do
    visit item_locations_url
    click_on "Edit", match: :first

    fill_in "Grocery item", with: @item_location.grocery_item_id
    fill_in "Section", with: @item_location.section
    fill_in "Store", with: @item_location.store
    click_on "Update Item location"

    assert_text "Item location was successfully updated"
    click_on "Back"
  end

  test "destroying a Item location" do
    visit item_locations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Item location was successfully destroyed"
  end
end
