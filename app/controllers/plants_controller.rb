class PlantsController < ApplicationController

  # GET /plants
  def index
    plants = Plant.all
    render json: plants
  end

  # GET /plants/:id
  def show
    plant = Plant.find(params[:id])
      if plant
        render json: plant
      else 
        render json: { error: "Plant not fount" }, status: :not_found
    end
  end

  # POST /plants
  def create
    new_plant = Plant.create(params.permit(:name, :image, :price))
    render json: new_plant, status: :created
  end


end
