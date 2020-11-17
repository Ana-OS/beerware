class PagesController < ApplicationController
  def home
  end

  def search
      @not_searched = !params[:query] #!! double negative. converts to truthy or falsy

      @beers = Beer.search_beers_by_name_category_description(params[:query])
      @bars = Bar.search_by_name_location_description(params[:query])

    if @beers.size > 0 || @bars.size > 0
        @empty_list = false

    elsif
      @empty_list = true

      @beers = Beer.all.sample(2)
      @bars = Bar.all.sample(2)
    end


  end
end
