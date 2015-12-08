FactoryGirl.define do
  factory :room do
    number { rand(10) }
    name  { Faker::Book.title }
    caregivers { 3.times.collect{|_num| Faker::Name.first_name} }
  end
end
