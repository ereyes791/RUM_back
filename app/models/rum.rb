class Rum < ActiveRecord::Base
  belongs_to :brand
  belongs_to :type
end
