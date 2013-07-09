class ProductType < ActiveRecord::Base
  has_many :items
  has_many :reviews
  attr_accessible :description, :name, :price
end
