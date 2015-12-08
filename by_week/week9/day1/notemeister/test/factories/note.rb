FactoryGirl.define do
  factory :note do
    title       { Faker::Book.title + rand(100000).to_s }
    body        { Faker::Lorem.paragraph(2) }

    factory :tagged do
      transient do
        tags_count 3
      end

      after(:create) do |note, evaluator|
        evaluator.tags_count.times do
          note.tags << create(:tag)
        end
      end

    end
  end

end
