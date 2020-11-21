class BarsController < ApplicationController
  before_action :find_bar, except: [:index]

  def index
    @bars = Bar.all
  end

  def show; end

  private

  def find_bar
    @bar = Bar.find(params[:id])
  end

end

