class User < ApplicationRecord
	validates :email, presence: true, uniqueness: true
	validates :password, presence: true, length: { minimum: 8}
	has_secure_password
end
