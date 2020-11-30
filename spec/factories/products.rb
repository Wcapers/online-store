FactoryBot.define do

  factory :product do
    manufacturer
    category
    title       { Faker::Lorem.word.camelcase }
    img         { 'p-1.png' }
    content     { Faker::Lorem.sentence(word_count: 10) }
    keywords    { title.downcase }
    description { content }
    price       { rand(10..500) }
    old_price   { rand(10..500) }
    status      { 1 }
    hit         { 1 }
  end
end
