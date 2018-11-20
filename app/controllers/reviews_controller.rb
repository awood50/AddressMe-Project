class ReviewsController < ApplicationController
    def create
        @address = Address.find(params[:address_id])
        @review = @address.reviews.create(review_params)
        redirect_to address_path(@address)
    end
    
    private
        def review_params
            params.require(:review).permit(:name, :body)
        end
end
