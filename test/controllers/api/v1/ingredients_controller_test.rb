require 'test_helper'

module Api
  module V1
    class IngredientsControllerTest < ActionDispatch::IntegrationTest
      setup do
        @ingredient = ingredients(:one)
      end

      test 'should get index' do
        get api_v1_ingredients_url
        assert_response :success
      end

      test 'should get new' do
        get new_api_v1_ingredient_url
        assert_response :success
      end

      test 'should create ingredient' do
        assert_difference('Ingredient.count') do
          post api_v1_ingredients_url,
               params: { ingredient: { grocery_item_id: @ingredient.grocery_item_id, qty: @ingredient.qty,
                                       step_id: ingredients(:two).step_id, unit: @ingredient.unit } }
        end

        assert_redirected_to api_v1_ingredient_url(Ingredient.last)
      end

      test 'should show ingredient' do
        get api_v1_ingredient_url(@ingredient)
        assert_response :success
      end

      test 'should get edit' do
        get edit_api_v1_ingredient_url(@ingredient)
        assert_response :success
      end

      test 'should update ingredient' do
        patch api_v1_ingredient_url(@ingredient),
              params: { ingredient: { grocery_item_id: @ingredient.grocery_item_id, qty: @ingredient.qty,
                                      step_id: @ingredient.step_id, unit: @ingredient.unit } }
        assert_redirected_to api_v1_ingredient_url(@ingredient)
      end

      test 'should destroy ingredient' do
        assert_difference('Ingredient.count', -1) do
          delete api_v1_ingredient_url(@ingredient)
        end

        assert_redirected_to api_v1_ingredients_url
      end
    end
  end
end
