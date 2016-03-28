class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.timestamps
      t.references :party
      t.references :item
      t.boolean :paid?
    end
  end
end
