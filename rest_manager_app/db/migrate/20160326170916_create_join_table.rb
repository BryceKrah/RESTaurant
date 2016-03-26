class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :Parties, :Orders do |t|
      t.index [:party_id, :order_id]
      t.index [:order_id, :party_id]
    end
  end
end
