class User < ApplicationRecord
    has_secure_password

    has_many :trades
    has_many :followed_assets
    has_many :synthetic_assets

    validates :user_name, presence: true, uniqueness: true
    validates :password_digest, presence: true
end
