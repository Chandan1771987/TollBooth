class TollBoothLeaderBoardController < ApplicationController


  def vehicles_processed
    toll = Toll.find params[:toll_id]
    toll_booth = TollBooth.find params[:toll_booth_id]
    data = TollLeaderBoard.vehicles_processed_at_toll_booth(toll: toll, toll_booth: toll_booth)
    _data = {data: data, processed_count: data.count}
    render json: _data
  end


  def charges_collected
    toll = Toll.find params[:toll_id]
    toll_booth = TollBooth.find params[:toll_booth_id]
    charges_collected = TollLeaderBoard.total_charges_collected_at_toll_booth(toll: toll, toll_booth:toll_booth)
    _data = {charges_collected: charges_collected}
    render json: _data
  end
end
