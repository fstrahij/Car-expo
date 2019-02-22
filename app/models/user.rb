class User < ApplicationRecord
	validates :first_name, presence: true, length: { maximum: 30 }
	validates :last_name, presence: true, length: { maximum: 50 }
	validates :user_name, presence: true, length: { maximum: 30 }
	validates :password, presence: true, length: { maximum: 20 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, length: { maximum: 50 }, format: { with: VALID_EMAIL_REGEX }
end
