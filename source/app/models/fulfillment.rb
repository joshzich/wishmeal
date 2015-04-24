class Fulfillment < ActiveRecord::Base
  belongs_to :fulfiller, class: "User"
  belongs_to :wish
end
