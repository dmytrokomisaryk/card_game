class User < ApplicationRecord
  include ActiveModel::Serialization

  has_secure_token

  enum role: [:moderator, :player]

  before_save :encrypt_password

  def valid_password?(psw)
    self.password == pass_hex(psw)
  end

  def attributes
    {username: username, token: token}
  end

  private

  def encrypt_password
    self.password = pass_hex(self.password)
  end

  def pass_hex(psw)
    Digest::SHA1.hexdigest("card_#{self.username}_game_#{psw}")
  end
end
