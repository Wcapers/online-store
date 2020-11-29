require 'faker'
def manufacturer_attributes
  {
    title: Faker::Company.name,
    img: 'manufacturer_logo.png',
    description: Faker::Lorem.sentence,
  }
end

def product_attributes(manufacturer)
  {
    manufacturer_id: manufacturer.id,
    title: Faker::Commerce.product_name,
    content: Faker::Lorem.sentence(word_count: 15),
    price: Faker::Commerce.price,
    old_price: Faker::Commerce.price,
    status: 1,
    keywords: 'keywords',
    description: Faker::Lorem.sentence(word_count: 10),
    img: 'drug.png',
    hit: 1
  }
end

5.times do
  attr = manufacturer_attributes
  Manufacturer.create(attr) unless Manufacturer.where(attr).first
end

manufacturers = Manufacturer.all

15.times do
  attr = product_attributes(manufacturers.sample)
  Product.create(attr) unless Product.where(attr).first
end
