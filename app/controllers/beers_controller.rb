class BeersController < ApplicationController
  before_action :find_beer, except: [:index]

  def index
   @beers = Beer.all
  end

  def show
    @reviews = @beer.reviews
    @review = Review.new
  end


  private

  def find_beer
    @beer = Beer.find(params[:id])
  end

end
