class CreateJoinTableOrdersItems < ActiveRecord::Migration
  def change
    create_join_table :Orders, :Items do |t|
      t.index [:order_id, :item_id]
      t.index [:item_id, :order_id]
    end
  end
end
