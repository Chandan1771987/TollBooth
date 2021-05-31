class TollLeaderBoard < ApplicationRecord

  def self.vehicles_processed_at_toll_booth(toll:, toll_booth:, date: Date.today)
    TollBoothTracker.where(toll_id: toll.id, toll_both_id: toll_booth.id, processed: true).
        where("created_at > ? and created_at < ?", Date.today.start, Date.today.end_of_day)
  end

  def self.total_charges_collected_at_toll_booth(toll:, toll_booth:, date: Date.today)
    Pass.joins("join toll_booth_trackers on toll_booth_trackers.pass_id = passes.id").where(toll_booth_trackers: {toll_id: toll.id, toll_both_id: toll_booth.id, purchased: true}).
        where("toll_booth_trackers.created_at > ? and toll_booth_trackers.created_at < ?", date.beginning_of_day, date.end_of_day).sum(:amount)
  end
end
