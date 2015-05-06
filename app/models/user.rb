class User < ActiveRecord::Base

  include BCrypt

  has_many :entries

  def self.authenticate(email, password)
    user = User.find_by_email(email)
    if user && user.password == password
      user
    else
      nil
    end
  end

  def password
    @password ||= Password.new(password_digest)
  end

  def password=(new_password)
    self.password_digest = Password.create(new_password)
  end

end
