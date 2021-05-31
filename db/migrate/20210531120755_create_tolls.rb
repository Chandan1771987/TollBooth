class CreateTolls < ActiveRecord::Migration[6.1]
  def change
    create_table :tolls do |t|
      t.integer :toll_company_id
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
