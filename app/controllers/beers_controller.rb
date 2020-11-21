class BeersController < ApplicationController
  before_action :find_beer, except: [:index]

  def index
    @beers = Beer.all
  end

  def show;end


  private

  def find_beer
    @beer = Beer.find(params[:id])
  end

end
