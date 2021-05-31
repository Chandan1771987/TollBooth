class CreateTollBooths < ActiveRecord::Migration[6.1]
  def change
    create_table :toll_booths do |t|
      t.integer :toll_id
      t.string :name

      t.timestamps
    end
  end
end
