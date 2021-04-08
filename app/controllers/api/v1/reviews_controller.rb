class Api::V1::ReviewsController < ApplicationController

    def index
        reviews = Review.all
        options = {
            include: [:gym]
        }
        render json: ReviewSerializer.new(reviews, options)
    end

    def create
        @review = Review.new(review_params)
        if @review.save
            render json: @review, status: :accepted
        else
            redner json: { errors: @review.errors.fullmessages }, status: :unprocessible_entity
        end
    end


    private

    def review_params
        params.require(:review).permit(:content, :rating, :gym_id)
    end
end
