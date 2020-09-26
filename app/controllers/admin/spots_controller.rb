class Admin::SpotsController < ApplicationController
  def index
  	@spots = Spot.all
  end

  def show
  	@spot = Spot.find(params[:id])
  end

  def new
    @spot = Spot.new(spot_params)
  end

  def edit
  end

   private
  def spot_params
    params.permit(:name, :image, :address, :introduction, :url)
  end
end
