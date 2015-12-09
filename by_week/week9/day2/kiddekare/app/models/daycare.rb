class Daycare < ActiveRecord::Base
  extend FriendlyId

  has_many :rooms
  belongs_to :user

  friendly_id :name, use: :slugged, slug_column: :permalink

end
