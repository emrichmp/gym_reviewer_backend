class Review < ApplicationRecord
    belongs_to :gym
    validates :rating, numericality { less_than_or_equal_to: 10 }
end
