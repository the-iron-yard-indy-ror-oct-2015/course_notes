class Drink < ActiveRecord::Base

  attachment :image

  validates_presence_of :name

  def proper_image_url
    if image_url.blank?
      url_of_image
    else
      image_url
    end
  end

end
