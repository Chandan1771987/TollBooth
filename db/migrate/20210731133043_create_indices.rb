class CreateIndices < ActiveRecord::Migration[6.1]
  def change
    add_index :toll_booth_trackers, %i[toll_id toll_both_id]
    add_index :vehicle_passes, %i[toll_id toll_id]
  end
end
