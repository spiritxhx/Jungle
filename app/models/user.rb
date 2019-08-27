class User < ActiveRecord::Base
  has_secure_password

  validates :password, {presence: true, confirmation: true, length: {in: 6..20}}
  validates :password_confirmation, presence: true
  validates :email, {presence: true, uniqueness: {case_sensitive: false}}
  validates :name, presence: true

  def self.authenticate_with_credentials(email, password)
    user = User.find_by_email(email.downcase.strip)
    if user && user.authenticate(password)
      return user
    else 
      return nil
    end
  end

end
