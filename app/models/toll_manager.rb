class TollManager

  def self.track_the_vehicle_activity(vehicle:, toll:, toll_booth:)
    if allow_the_vehicle_to_pass?(vehicle: vehicle, toll: toll)
      TollBoothTracker.create!(vehicle_id: vehicle.id, toll_id: toll.id, toll_both_id: toll_booth.id, processed: true, purchased: false)
    else
      raise Exception.new("The vehicle is not having the pass to process. Please purchase")
    end
  end

  def self.purchase_pass(vehicle:, toll:, toll_booth:, pass:, direction: nil)
    vpass = nil
    unless already_pass_exists?(vehicle: vehicle, toll: toll, direction: direction)
      expires_at = pass.expires_at
      vpass = VehiclePass.create!(vehicle_id: vehicle.id, toll_id: toll.id, toll_booth_id: toll_booth.id, pass_id: pass.id, expires_at: expires_at)
      TollBoothTracker.create!(vehicle_id: vehicle.id, toll_id: toll.id, toll_both_id: toll_booth.id, processed: true, purchased: true)
    end
    vpass
  end

  def self.already_pass_exists?(vehicle:, toll:, direction: nil, pass: nil)
    vehicle_pass(vehicle: vehicle, toll: toll, direction: direction).where("expires_at <= ?", Time.now).exists?
  end

  def self.vehicle_pass(vehicle:, toll:, direction: nil)
    VehiclePass.where(vehicle_id: vehicle.id, toll_id: toll.id, direction: direction).where("expires_at <= ?", Time.now)
  end

  def self.allow_the_vehicle_to_pass?(vehicle:, toll:, direction: nil)
    vehicle_pass(vehicle: vehicle, toll: toll, direction: direction).where("expires_at <= ?", Time.now).exists?
  end
end