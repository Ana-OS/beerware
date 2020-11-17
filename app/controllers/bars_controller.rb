class BarsController < ApplicationController
  before_action :find_bar, except: [:index]
  def index
    if params[:query].present?
      @bars = Bar.search_by_name_location_description(params[:query])
    else
      @bars = Bar.all
    end
  end
  def new
    @bar = Bar.new
  end
  def create
    @bar = Bar.new(bar_params)
    if @bar.save
      redirect_to bars_path
    else
      render :new
    end
  end
  def show; end
  def edit; end
  def update
    @bar.update(bar_params)
    redirect_to bar_path(@bar)
  end
  def destroy
    @bar.destroy
    redirect_to bars_path
    # bars_user_index_path
  end
  private
  def find_bar
    @bar = Bar.find(params[:id])
  end
  def bar_params
    params.require(:bar).permit(:name, :description, :location, :city, :country)
  end

end
