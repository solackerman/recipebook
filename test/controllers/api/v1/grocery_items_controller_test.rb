require 'test_helper'

module Api
  module V1
    class GroceryItemsControllerTest < ActionDispatch::IntegrationTest
      setup do
        @grocery_item = grocery_items(:one)
      end

      test 'should get index' do
        get api_v1_grocery_items_url
        assert_response :success
      end

      test 'should get new' do
        get new_api_v1_grocery_item_url
        assert_response :success
      end

      test 'should create grocery_item' do
        assert_difference('GroceryItem.count') do
          post api_v1_grocery_items_url,
               params: { grocery_item: { description: @grocery_item.description,
                                         name: 'Cheese',
                                         need: @grocery_item.need,
                                         qty: @grocery_item.qty, unit: @grocery_item.unit } }
        end

        assert_redirected_to api_v1_grocery_item_url(GroceryItem.last)
      end

      test 'should show grocery_item' do
        get api_v1_grocery_item_url(@grocery_item)
        assert_response :success
      end

      test 'should get edit' do
        get edit_api_v1_grocery_item_url(@grocery_item)
        assert_response :success
      end

      test 'should update grocery_item' do
        patch api_v1_grocery_item_url(@grocery_item),
              params: { grocery_item: { description: @grocery_item.description,
                                        name: @grocery_item.name,
                                        need: @grocery_item.need,
                                        qty: @grocery_item.qty, unit: @grocery_item.unit } }
        assert_redirected_to api_v1_grocery_item_url(@grocery_item)
      end

      test 'should destroy grocery_item' do
        # Ingredient.delete_all
        # Step.destroy_all
        Recipe.destroy_all
        assert_difference('GroceryItem.count', -1) do
          delete api_v1_grocery_item_url(@grocery_item)
        end

        assert_redirected_to api_v1_grocery_items_url
      end
    end
  end
end
