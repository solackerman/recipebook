require 'test_helper'

module Api
  module V1
    class RecipesControllerTest < ActionDispatch::IntegrationTest
      setup do
        @recipe = recipes(:one)
      end

      test 'should get index' do
        get api_v1_recipes_url
        assert_response :success
      end

      test 'should get new' do
        get new_api_v1_recipe_url
        assert_response :success
      end

      test 'should create recipe' do
        assert_difference('Recipe.count') do
          post api_v1_recipes_url,
               params: { recipe: { description: @recipe.description, name: @recipe.name,
                                   num_servings: @recipe.num_servings } }
        end

        assert_redirected_to api_v1_recipe_url(Recipe.last)
      end

      test 'should show recipe' do
        get api_v1_recipe_url(@recipe)
        assert_response :success
      end

      test 'should get edit' do
        get edit_api_v1_recipe_url(@recipe)
        assert_response :success
      end

      test 'should update recipe' do
        patch api_v1_recipe_url(@recipe),
              params: { recipe: { description: @recipe.description, name: @recipe.name,
                                  num_servings: @recipe.num_servings } }
        assert_redirected_to api_v1_recipe_url(@recipe)
      end

      test 'should destroy recipe' do
        assert_difference('Recipe.count', -1) do
          delete api_v1_recipe_url(@recipe)
        end

        assert_redirected_to api_v1_recipes_url
      end
    end
  end
end
