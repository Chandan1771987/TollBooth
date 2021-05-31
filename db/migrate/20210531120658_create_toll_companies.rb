class CreateTollCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :toll_companies do |t|
      t.string :name
      t.string :country
      t.string :address

      t.timestamps
    end
  end
end
