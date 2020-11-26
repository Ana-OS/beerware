class BeersController < ApplicationController
  before_action :find_beer, except: [:index]

  def index
   @beers = Beer.all
  end

  def show
    @reviews = @beer.reviews
    @review = Review.new
  end

  def bar_list
    @beer_bars = @beer.bars
  end

  def to_drink
    # @beer = Beer.find(params[:id])
    @user_beer = UsersBeer.new(beer: @beer, user: current_user, drank: false)
    @user_beer.save
  end

  def drank
    # get the beer from the params id- find_beer
    # check if the UserBeer instance exists already (UBfind_by)
    @user_beer = UsersBeer.find_by(beer: @beer, user: current_user)
    # if there is, update drank to true
    if @user_beer
      @user_beer.update(drank: true)
      #else create a new instance of UsersBeer.new(beer: @beer, user: current_user, drank: true)/.save
    else
      @user_beer = UsersBeer.new(beer: @beer, user: current_user, drank: true)
      @user_beer.save
      # redirect to where user was
      redirect_to beers_path(@beer.id)
    end
  end

  def unlist; end

  private

  def find_beer
    @beer = Beer.find(params[:id])
  end

end



