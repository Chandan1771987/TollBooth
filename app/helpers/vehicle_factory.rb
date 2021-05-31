class VehicleFactory
  def self.create_vehicle(params:)
    if params[:type] == 'two'
      Vehicle.create(reg_no: params[:reg_no], model: 'vehicle', company: 'vehicle', no_of_wheels: 2, v_type: 'bike_gearless')
    elsif params[:type] == 'four'
      Vehicle.create(reg_no: params[:reg_no], model: 'vehicle', company: 'vehicle', no_of_wheels: 4, v_type: 'cedan')
    end
  end
end