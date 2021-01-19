class User < ApplicationRecord
    belongs_to :club

    has_many :attendances
    has_many :places, through: :attendances

    has_many :likes
    has_many :liked_places, through: :likes, source: :place

    has_secure_password

    validates :username, presence: true
    validates :username, uniqueness: true
    validates :username, length: { minimum: 4 }
    validates :password, presence: true
end
