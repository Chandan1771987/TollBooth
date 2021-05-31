class TollBoothController < ApplicationController
  def create

    render json: true
  end

  def show
    booth = TollBooth.find params[:id]
    render json: booth.web_json
  end

  def index
    page = params[:page].to_i > 0 ? params[:page] : 1
    per_page = params[:per_page].to_i > 0 ? params[:per_page] : 10
    data = TollBooth
    render json: data.paginate(page: page, per_page: per_page).map(&:web_json)
  end

  def destroy
    booth = TollBooth.find params[:id]
    booth.destroy
    render json: true
  end
end
