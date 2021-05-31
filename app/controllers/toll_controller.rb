class TollController < ApplicationController
  def create
    toll = Toll.create(id: params[:id], toll_company_id: params[:company_id], name: 'Toll', address: 'Address')
    render json: toll.json
  end

  def show
    toll = Toll.find params[:id]
    render json: toll.web_json
  end

  def index
    page = params[:page].to_i > 0 ? params[:page] : 1
    per_page = params[:per_page].to_i > 0 ? params[:per_page] : 10
    data = Toll
    render json: data.paginate(page: page, per_page: per_page).map(&:web_json)
  end

  def destroy
    toll = Toll.find params[:id]
    toll.destroy
    render json: toll.web_json
  end
end
