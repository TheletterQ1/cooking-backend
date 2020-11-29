class User < ApplicationRecord
    has_many :scheduler
    has_many :events, through: :scheduler
    has_secure_password
end
