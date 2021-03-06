class User < ApplicationRecord
    has_many :user_artworks, dependent: :destroy
    has_many :artworks, through: :user_artworks

    validates :name, presence: true, uniqueness: true
end
