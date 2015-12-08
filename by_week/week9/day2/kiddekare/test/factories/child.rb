FactoryGirl.define do
  factory :child do
    name { Faker::Name.name }
    birthday { Faker::Date.between(6.years.ago, 1.years.ago) }
  end
end
