FactoryGirl.define do
  factory :user do
    name "John"
    password "password"
    email "john@john.com"
  end


  factory :product_type do
    name "PS3"
    price 300
    description "Video game system"
  end

  factory :item do
    name "PS3001"
    product_type

      factory :purchased_item do
        user
      end
  end
  factory :review do
    content "this system rocks"
    user
    product_type
  end
end

