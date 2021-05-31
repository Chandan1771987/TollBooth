class CreateVehiclePasses < ActiveRecord::Migration[6.1]
  def change
    create_table :vehicle_passes do |t|
      t.integer :vehicle_id
      t.integer :toll_id
      t.integer :toll_booth_id
      t.integer :pass_id
      t.datetime :expires_at
      t.string :direction

      t.timestamps
    end
  end
end
