class Order < ActiveRecord::Base
  has_many :items
  belongs_to :parties

end
