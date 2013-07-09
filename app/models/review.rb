class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :product_type

  attr_accessible :content

end
