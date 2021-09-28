require "application_system_test_case"

class GroceryItemsTest < ApplicationSystemTestCase
  setup do
    @grocery_item = grocery_items(:one)
  end

  test "visiting the index" do
    visit grocery_items_url
    assert_selector "h1", text: "Grocery Items"
  end

  test "creating a Grocery item" do
    visit grocery_items_url
    click_on "New Grocery Item"

    fill_in "Description", with: @grocery_item.description
    fill_in "Name", with: @grocery_item.name
    check "Need" if @grocery_item.need
    fill_in "Qty", with: @grocery_item.qty
    fill_in "Unit", with: @grocery_item.unit
    click_on "Create Grocery item"

    assert_text "Grocery item was successfully created"
    click_on "Back"
  end

  test "updating a Grocery item" do
    visit grocery_items_url
    click_on "Edit", match: :first

    fill_in "Description", with: @grocery_item.description
    fill_in "Name", with: @grocery_item.name
    check "Need" if @grocery_item.need
    fill_in "Qty", with: @grocery_item.qty
    fill_in "Unit", with: @grocery_item.unit
    click_on "Update Grocery item"

    assert_text "Grocery item was successfully updated"
    click_on "Back"
  end

  test "destroying a Grocery item" do
    visit grocery_items_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Grocery item was successfully destroyed"
  end
end
