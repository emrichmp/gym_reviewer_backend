class Gym < ApplicationRecord
    has_many :reviews

    validates :name, :description, :location, presence: true
end
