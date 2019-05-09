class Moment < ApplicationRecord
    has_many :words 
    belongs_to :users 
end
