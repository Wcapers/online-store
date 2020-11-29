FactoryBot.define do
  factory :manufacturer do
    title { Faker::Lorem.sentence(word_count: 10) }
    description { Faker::Lorem.sentence(word_count: 10) }
  end
end
