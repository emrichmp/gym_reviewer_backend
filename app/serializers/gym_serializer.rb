class GymSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :location
end
