class TacosController < ApplicationController
  before_action :set_taco, only: [:show, :update, :destroy]

  # GET /tacos
  def index
    @tacos = Taco.all
    json_response @tacos
  end

  # GET /tacos/1
  def show
    json_response @taco
  end

  # POST /tacos
  def create
    @taco = Taco.create!(taco_params)
    json_response(@taco, :created)
  end

  # PATCH/PUT /tacos/1
  def update
    @taco.update(taco_params)
    head :no_content
  end

  # DELETE /tacos/1
  def destroy
    @taco.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_taco
      @taco = Taco.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def taco_params
      params.require(:taco).permit(:meat, :rice, :salsa, :notes)
    end
end
