class ItemLocationsController < ApplicationController
  before_action :set_item_location, only: %i[ show edit update destroy ]

  # GET /item_locations or /item_locations.json
  def index
    @item_locations = ItemLocation.all
  end

  # GET /item_locations/1 or /item_locations/1.json
  def show
  end

  # GET /item_locations/new
  def new
    @item_location = ItemLocation.new
  end

  # GET /item_locations/1/edit
  def edit
  end

  # POST /item_locations or /item_locations.json
  def create
    @item_location = ItemLocation.new(item_location_params)

    respond_to do |format|
      if @item_location.save
        format.html { redirect_to @item_location, notice: "Item location was successfully created." }
        format.json { render :show, status: :created, location: @item_location }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @item_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /item_locations/1 or /item_locations/1.json
  def update
    respond_to do |format|
      if @item_location.update(item_location_params)
        format.html { redirect_to @item_location, notice: "Item location was successfully updated." }
        format.json { render :show, status: :ok, location: @item_location }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @item_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_locations/1 or /item_locations/1.json
  def destroy
    @item_location.destroy
    respond_to do |format|
      format.html { redirect_to item_locations_url, notice: "Item location was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item_location
      @item_location = ItemLocation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def item_location_params
      params.require(:item_location).permit(:grocery_item_id, :store, :section)
    end
end
