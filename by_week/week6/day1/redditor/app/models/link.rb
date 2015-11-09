class Link < ActiveRecord::Base

  has_many :votes

  validates_presence_of :title, :url

  validates_format_of :url, :with => /\Ahttp(|s):\/\//

  before_validation :add_http

  def add_http
    unless self.url =~ /\Ahttp(|s):\/\//
      self.url = "http://" + self.url
    end
  end

end
