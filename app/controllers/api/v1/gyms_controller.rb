class Api::V1::GymsController < ApplicationController
    def index
        gyms = Gym.all
        render json: GymSerializer.new(gyms)
    end
end
