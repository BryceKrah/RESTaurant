class AddColumnToParties < ActiveRecord::Migration
  def change
    change_column :parties, :paid?, :boolean, :default => false
  end
end
