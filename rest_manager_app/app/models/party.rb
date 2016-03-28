class Party < ActiveRecord::Base
  has_one :order, dependent: :destroy
end
