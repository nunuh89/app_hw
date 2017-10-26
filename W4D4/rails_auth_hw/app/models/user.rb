class User < ApplicationRecord
  validates :username, :session_token, presence: true, uniqueness: ture
  validates :password_digest, presence: { message: 'Password can\'t be blank' }


  def password=(password)
    self.password_digest = BCrypt::Password.create(password)
  end

  def is_password?(password)
    BCrypt::Password.new(self.password_digest).is_password?(password)
  end
end
