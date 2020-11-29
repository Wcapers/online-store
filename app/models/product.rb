class Product < ApplicationRecord
  belongs_to :manufacturer
  validates :title, presence: true
  validates :price, presence: true
  enum hit: { hit: 1, not_hit: 0 }
end
