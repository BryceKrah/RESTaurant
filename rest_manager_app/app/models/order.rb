class Order < ActiveRecord::Base
  has_and_belongs_to_many :items
  has_one :party

end
