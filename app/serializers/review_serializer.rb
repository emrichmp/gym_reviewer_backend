class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :content, :rating, :gym_id
  belongs_to :gym
end
