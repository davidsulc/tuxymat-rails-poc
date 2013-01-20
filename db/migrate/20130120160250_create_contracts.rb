class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
      t.date :start_date
      t.date :end_date
      t.integer :vending_machine_id
      t.integer :partner_id

      t.timestamps
    end
  end
end
