module Api
  module V1
    # /api/v1/recipes/...
    class RecipesController < ApplicationController
      protect_from_forgery with: :null_session
      before_action :set_recipe, only: %i[show edit update destroy]

      # GET /recipes or /recipes.json
      def index
        @recipes = Recipe.all
      end

      # GET /recipes/1 or /recipes/1.json
      def show; end

      # GET /recipes/new
      def new
        @recipe = Recipe.new
      end

      # GET /recipes/1/edit
      def edit; end

      # POST /recipes or /recipes.json
      def create
        @recipe = Recipe.new(recipe_params)

        respond_to do |format|
          if @recipe.save
            format.html { redirect_to api_v1_recipe_url(@recipe), notice: 'Recipe was successfully created.' }
            format.json { render :show, status: :created, location: @recipe }
          else
            format.html { render :new, status: :unprocessable_entity }
            format.json { render json: @recipe.errors, status: :unprocessable_entity }
          end
        end
      end

      # PATCH/PUT /recipes/1 or /recipes/1.json
      def update
        respond_to do |format|
          if @recipe.update(recipe_params)
            format.html { redirect_to api_v1_recipe_url(@recipe), notice: 'Recipe was successfully updated.' }
            format.json { render :show, status: :ok, location: @recipe }
          else
            format.html { render :edit, status: :unprocessable_entity }
            format.json { render json: @recipe.errors, status: :unprocessable_entity }
          end
        end
      end

      # DELETE /recipes/1 or /recipes/1.json
      def destroy
        @recipe.destroy
        respond_to do |format|
          format.html { redirect_to api_v1_recipes_url, notice: 'Recipe was successfully destroyed.' }
          format.json { head :no_content }
        end
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_recipe
        @recipe = Recipe.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def recipe_params
        params.require(:recipe)
              .permit(:name, :description, :num_servings,
                      steps_attributes:
                      [:number, :description, :timer,
                       { ingredients_attributes: %i[grocery_item_id unit qty] }])
      end
    end
  end
end
