FactoryGirl.define do
  factory :daycare do
    name { Faker::Company.name }
    street1 { Faker::Address.street_address }
    city  { Faker::Address.city }
    state { Faker::Address.state_abbr }
    zip_code { Faker::Address.zip }
    price { (Faker::Commerce.price * 100).to_i }
  end
end
