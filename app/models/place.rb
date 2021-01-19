class Place < ApplicationRecord
    has_many :attendances
    has_many :users, through: :attendances

    has_many :likes
    has_many :user_likes, through: :likes, source: :user
end
