class BeersController < ApplicationController
  def index
    if params[:query].present?
      @beers = Beer.search_by_name_category_description(params[:query])
    else
      @beers = Beer.all
    end
  end

  def show
    @beer = Beer.find(params[:id])
  end
end
