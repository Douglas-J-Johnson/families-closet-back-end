class FamiliesController < ApplicationController
  before_action :set_family, only: [:show, :update, :destroy]

  # GET /families
  def index
    @families = Family.all

    render json: @families, include: [:children, :caregivers]
  end

  # GET /families with a specified params[:distance]
  def within_distance
    puts params[:distance]
    @families = Family.all

    render json: @families, include: [:children, :caregivers]
  end

  # GET /families/1
  def show
    render json: @family
  end

  # POST /families
  def create
    @family = Family.new(family_params)

    if @family.save
      render json: @family, status: :created, location: @family
    else
      render json: @family.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /families/1
  def update
    if @family.update(family_params)
      render json: @family
    else
      render json: @family.errors, status: :unprocessable_entity
    end
  end

  # DELETE /families/1
  def destroy
    @family.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_family
      @family = Family.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def family_params
      params.require(:family).permit(:display_name, :location_actual, :location_display)
    end
end
