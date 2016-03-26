class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :cuisine_type
      t.integer :price
    end
  end
end
