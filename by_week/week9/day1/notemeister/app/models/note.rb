class Note < ActiveRecord::Base

  has_many :taggings
  has_many :tags, :through => :taggings

  validates_uniqueness_of :title

  scope :tagged_with, -> (tag_string) { joins(:tags).where("tags.name = ?", tag_string) }


end
