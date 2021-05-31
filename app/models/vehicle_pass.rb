class VehiclePass < ApplicationRecord
  has_one :pass, foreign_key: 'pass_id'
  has_one :vehicle, foreign_key: 'vehicle_id'
  has_one :toll, foreign_key: 'toll_id'
  has_one :toll_booth, foreign_key: 'toll_booth_id'

end
