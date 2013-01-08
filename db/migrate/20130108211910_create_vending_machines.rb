class CreateVendingMachines < ActiveRecord::Migration
  def change
    create_table :vending_machines do |t|
      t.string :serial_number
      t.decimal :purchase_price, :precision => 6, :scale => 2
      t.boolean :age_verification

      t.timestamps
    end
  end
end
