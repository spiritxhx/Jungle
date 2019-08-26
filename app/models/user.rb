class User < ActiveRecord::Base
  has_secure_password

  validates :password, {presence: true, confirmation: true, length: {in: 6..20}}
  validates :password_confirmation, presence: true
  validates :email, presence: true
  validates :name, presence: true

end
