class VehiclePassController < ApplicationController
  def create
    vehicle = Vehicle.find params[:vehicle_id]
    toll = Toll.find params[:toll_id]
    toll_booth = TollBooth.find params[:toll_id]
    pass = PassFactory.get_pass(type: params[:type])
    pass = TollManager.purchase_pass(vehicle: vehicle, toll: toll, toll_booth: toll_booth, pass: pass, direction: params[:direction])
    render json: pass.web_json
  end

  def show
    data = VehiclePass.find params[:id]
    render json: data.web_json
  end

  def index
    page = params[:page].to_i > 0 ? params[:page] : 1
    per_page = params[:per_page].to_i > 0 ? params[:per_page] : 10
    data = VehiclePass
    render json: data.paginate(page: page, per_page: per_page).map(&:web_json)
  end

  def destroy
    data = VehiclePass.find params[:id]
    data.destroy
    render json: true
  end
end
