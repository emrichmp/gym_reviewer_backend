class GymSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :location, :reviews
  has_many :reviews
end
