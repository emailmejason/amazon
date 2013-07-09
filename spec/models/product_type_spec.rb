require 'spec_helper'

describe ProductType do
  it "has many items" do
  item=FactoryGirl.create(:item)
  product_type=item.product_type

  expect(product_type.items).to include(item)
  end

  it "has any reviews" do
    review =FactoryGirl.create(:review)
    product_type=review.product_type

  expect(product_type.reviews).to include(review)
  end
end