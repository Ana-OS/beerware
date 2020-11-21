class PagesController < ApplicationController
  def home
  end

  def landing
    if Rails.env.production?
      @ip = request.remote_ip
    else
      @ip = Net::HTTP.get(URI.parse('http://checkip.amazonaws.com/')).squish
    end
    @bars_near = Bar.near(@ip)
  end

  def search
    @not_searched = !params[:query]

    @beers = Beer.search_beers_by_name_category_description(params[:query])
    @bars = Bar.search_by_name_location_description(params[:query])

    if @beers.size > 0 || @bars.size > 0
      @empty_list = false

    elsif @empty_list = true
      @beers = Beer.all.sample(2)
      @bars = Bar.all.sample(2)
    end
  end

  def map
    @bars = Bar.where.not(latitude: nil, longitude: nil)

    @markers = @bars.map do |bar|
      {
        lng: bar.longitude,
        lat: bar.latitude,
        infoWindow: render_to_string(partial: "info_bar", locals: { bar: bar })
      }
    end
  end
end
