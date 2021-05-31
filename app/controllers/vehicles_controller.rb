class VehiclesController < ApplicationController

  def create
    vehicle = VehicleFactory.create(params: params)
    render json: vehicle.web_json
  end

  def show
    data = Vehicle.find params[:id]
    render json: data.web_json
  end

  def index
    page = params[:page].to_i > 0 ? params[:page] : 1
    per_page = params[:per_page].to_i > 0 ? params[:per_page] : 10
    data = Vehicle
    render json: data.paginate(page: page, per_page: per_page).map(&:web_json)
  end

  def destroy
    data = Vehicle.find params[:id]
    data.destroy
    render json: true
  end
end
