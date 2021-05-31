class CreateTollBoothTrackers < ActiveRecord::Migration[6.1]
  def change
    create_table :toll_booth_trackers do |t|
      t.integer :vehicle_id
      t.integer :toll_both_id
      t.integer :toll_id
      t.boolean :purchased
      t.boolean :processed
      t.integer :pass_id

      t.timestamps
    end
  end
end
