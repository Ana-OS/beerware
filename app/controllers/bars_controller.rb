class BarsController < ApplicationController
  before_action :find_bar, except: [:index]

  def index
    @bars = Bar.all
  end

  def show; end
  def beer_menu
    @bar_beer = @bar.beers
  end

  def map
    @options = { padding: 70, maxZoom: 17, duration: 0 }
    @markers = [
      {
        lng: @bar.longitude,
        lat: @bar.latitude,
      }
    ]
  end

  private

  def find_bar
    @bar = Bar.find(params[:id])
  end

end

