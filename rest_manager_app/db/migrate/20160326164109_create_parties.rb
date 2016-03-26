class CreateParties < ActiveRecord::Migration
  def change
    create_table :parties do |t|
      t.integer :table_number
      t.integer :guests
      t.boolean :paid?
      t.references :order
    end
  end
end
