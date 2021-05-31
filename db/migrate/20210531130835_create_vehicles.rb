class CreateVehicles < ActiveRecord::Migration[6.1]
  def change
    create_table :vehicles do |t|
      t.string :reg_no
      t.string :model
      t.string :company
      t.integer :no_of_wheels
      t.string :v_type

      t.timestamps
    end
  end
end
