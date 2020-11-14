class BeersController < ApplicationController
  before_action :find_beer, except: [:index]

  def index
    if params[:query].present?
      @beers = Beer.search_by_name_category_description(params[:query])
    else
      @beers = Beer.all
    end
  end

  def show;end

  # def new
  #   @beer = Beer.new
  # end

  # def create
  #   # @bar = Bar.find(params[:bar_id])
  #   @beer = Beer.new(beer_params)
  #   # @beer.bar = @bar

  #   if @beer.save
  #     redirect_to beers_path
  #   else
  #     render :new
  #   end
  # end

  # def destroy;end


  private

  def find_beer
    @beer = Beer.find(params[:id])
  end

  def beer_params
    params.require(:beer).permit(:name, :category, :alcohol, :ibu, :temperature, :description)
  end
end
