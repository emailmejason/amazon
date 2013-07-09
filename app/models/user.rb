class User < ActiveRecord::Base
  has_secure_password
  has_many :items
  has_many :reviews
  attr_accessible :email, :name, :password_digest
  validates_uniqueness_of :email


end
