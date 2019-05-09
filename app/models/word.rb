class Word < ApplicationRecord
    belongs_to :moment
    belongs_to :user
end
