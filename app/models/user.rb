class User < ApplicationRecord
  has_secure_password

  validates :email, { uniqueness: true }
  validates :password, { presence: true }
end
