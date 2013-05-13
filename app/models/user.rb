class User < ActiveRecord::Base
  attr_accessible :email, :name, :password_digest, :password, :password_confirmation
  
  validates :name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  has_secure_password
end
