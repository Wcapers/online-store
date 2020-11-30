class Product < ApplicationRecord
  validates :title, presence: true
  validates :price, presence: true
  belongs_to :manufacturer
  belongs_to :category

  enum hit: { hit: 1, not_hit: 0 }
end
