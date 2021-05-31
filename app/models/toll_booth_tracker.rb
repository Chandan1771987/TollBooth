class TollBoothTracker < ApplicationRecord
  has_one :vehicle, foreign_key: 'vehicle_id'
  has_one :toll, foreign_key: 'toll_id'
  has_one :toll_booth, foreign_key: 'toll_both_id'

  def pass
    Pass.find pass_id
  end
end
