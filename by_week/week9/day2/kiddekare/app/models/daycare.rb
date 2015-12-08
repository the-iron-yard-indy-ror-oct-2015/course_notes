class Daycare < ActiveRecord::Base

  has_many :rooms
  belongs_to :user

end
