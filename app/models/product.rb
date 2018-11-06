class Product < ApplicationRecord
  has_many :purchases
  has_many :users, through: :purchases
  belongs_to :category
end
