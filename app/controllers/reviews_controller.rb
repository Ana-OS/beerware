class ReviewsController < ApplicationController
  before_action :find_review, only: [:show, :destroy]

  def index
    @reviews = Review.all
  end

  def new
    @beer = Beer.find(params[:beer_id])
    @reviews = Review.new
  end

  def create
    @beer = Beer.find(params[:beer_id])
    @review = Review.new(reviews_params)
    @review.beer = @beer
    @review.user = current_user
      if @review.save
        redirect_to beer_path(@beer)
      else
        render 'new'
      end
  end

  def show
    @beer = @review.beer
    @reviews = Review.all
  end

  def destroy
    @review.destroy
  end

  private

  def reviews_params
    params.require(:review).permit(:content, :rating)
  end


  def find_review
    @review = Review.find(params[:id])
  end

end
