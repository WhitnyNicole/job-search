class User < ApplicationRecord
    has_many :interviews
    has_many :reviews, through: :interviews
    
    has_secure_password
end
