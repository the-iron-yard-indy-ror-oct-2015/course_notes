FactoryGirl.define do
  factory :subscription_plan do
    amount 15000
    interval "month"
    stripe_id "MyString"
    name "MyString"
  end

end
