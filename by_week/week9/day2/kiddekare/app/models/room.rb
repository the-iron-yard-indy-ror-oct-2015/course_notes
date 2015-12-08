class Room < ActiveRecord::Base

  belongs_to :daycare
  has_many :children

end
