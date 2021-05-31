class CreateTollLeaderBoards < ActiveRecord::Migration[6.1]
  def change
    create_table :toll_leader_boards do |t|

      t.timestamps
    end
  end
end
