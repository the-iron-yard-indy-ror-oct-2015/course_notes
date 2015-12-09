FactoryGirl.define do
  factory :user do
    email { Faker::Internet.email }
    name  { Faker::Name.name }
    password { Faker::Internet.password }
    password_confirmation { password }
    role "daycare_administrator"
  end
end
