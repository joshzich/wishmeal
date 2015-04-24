class Wish < ActiveRecord::Base
  belongs_to :creator, class: "User"
  has_many :fulfillments
end
