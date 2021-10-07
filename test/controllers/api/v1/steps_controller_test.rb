require 'test_helper'

module Api
  module V1
    class StepsControllerTest < ActionDispatch::IntegrationTest
      setup do
        @step = steps(:one)
      end

      test 'should get index' do
        get api_v1_steps_url
        assert_response :success
      end

      test 'should get new' do
        get new_api_v1_step_url
        assert_response :success
      end

      test 'should create step' do
        assert_difference('Step.count') do
          post api_v1_steps_url,
               params: { step: { description: @step.description, recipe_id: @step.recipe_id, number: 3,
                                 timer: @step.timer } }
        end

        assert_redirected_to api_v1_step_url(Step.last)
      end

      test 'should show step' do
        get api_v1_step_url(@step)
        assert_response :success
      end

      test 'should get edit' do
        get edit_api_v1_step_url(@step)
        assert_response :success
      end

      test 'should update step' do
        patch api_v1_step_url(@step),
              params: { step: { description: @step.description, recipe_id: @step.recipe_id, number: @step.number,
                                timer: @step.timer } }
        assert_redirected_to api_v1_step_url(@step)
      end

      test 'should destroy step' do
        assert_difference('Step.count', -1) do
          delete api_v1_step_url(@step)
        end

        assert_redirected_to api_v1_steps_url
      end
    end
  end
end
