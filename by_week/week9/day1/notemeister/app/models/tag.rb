class Tag < ActiveRecord::Base

  has_many :taggings
  has_many :notes, :through => :taggings

  before_save :downcase_name, :replace_spaces

  validates_uniqueness_of :name

  def downcase_name
    name.downcase!
  end

  def replace_spaces
    name.gsub!(" ", "-")
  end


end
