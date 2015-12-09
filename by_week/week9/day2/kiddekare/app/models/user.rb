class User < ActiveRecord::Base

  acts_as_authentic
  has_paper_trail

  has_many :daycares
  has_many :rooms, :through => :daycares

  has_one :subscription, :class_name => Payola::Subscription, :as => :owner


end
