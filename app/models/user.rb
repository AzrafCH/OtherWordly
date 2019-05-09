class User < ApplicationRecord
    has_secure_password
    has_many :moments
    has_many :words 
end
