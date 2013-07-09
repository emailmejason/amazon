class Item < ActiveRecord::Base
  belongs_to :user
  belongs_to :product_type
  attr_accessible :name, :product_type_id, :user_id

  def available?
    self.user.blank?
  end
end
