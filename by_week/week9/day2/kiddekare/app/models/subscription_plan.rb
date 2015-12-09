class SubscriptionPlan < ActiveRecord::Base
  include Payola::Plan

  def redirect_path(subscription)
    "/daycares/new"
  end

end
