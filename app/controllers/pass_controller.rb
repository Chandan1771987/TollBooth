class PassController < ApplicationController

  def index
    page = params[:page].to_i > 0 ? params[:page] : 1
    per_page = params[:per_page].to_i > 0 ? params[:per_page] : 10
    data = Pass
    render json: data.paginate(page: page, per_page: per_page).map(&:web_json)
  end

  def show
    pass = Pass.find params[:id]
    render json: pass.web_json
  end
end
