class Api::V1::GymsController < ApplicationController
    def index
        gyms = Gym.all
        render json: GymSerializer.new(gyms)
    end

    def create
        @gym = Gym.create(gym_params)
        if @gym.save
            render json: @gym, status: :accepted
        else
            render json: { errors: @gym.errors.full_messages }, status: :unprocessible_entity
        end
    end

    private

    def gym_params
        params.require(:gym).permit(:name, :description, :location)
    end
end
