class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.timestamps
      t.references :party
      t.boolean :paid?, :default => false
    end
  end
end
