class CreatePasses < ActiveRecord::Migration[6.1]
  def change
    create_table :passes do |t|
      t.integer :amount
      t.string :p_type

      t.timestamps
    end
  end
end
