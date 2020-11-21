class BarsController < ApplicationController
  before_action :find_bar, except: [:index]

  def index
    @bars = Bar.all
end
  def show; end

  # def new
  #   @bar = Bar.new
  # end

  # def create
  #   @bar = Bar.new(bar_params)
  #   if @bar.save
  #     redirect_to bars_path
  #   else
  #     render :new
  #   end
  # end


  # def edit; end

  # def destroy
  #   @bar.destroy
  #   redirect_to bars_path
  #   # bars_user_index_path
  # end

  private

  def find_bar
    @bar = Bar.find(params[:id])
  end

  # def bar_params
  #   params.require(:bar).permit(:name, :description, :location, :city, :country)
  # end
end

