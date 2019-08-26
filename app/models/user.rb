class User < ActiveRecord::Base
  has_secure_password

  validates :password, {presence: true, confirmation: true, length: {in: 6..20}}
  validates :password_confirmation, presence: true
  validates :email, {presence: true, uniqueness: {case_sensitive: false}}
  validates :name, presence: true

end
