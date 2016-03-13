class Note < ActiveRecord::Base
  belongs_to :user
  belongs_to :rum
  belongs_to :taste
  belongs_to :smell
  belongs_to :color
end
