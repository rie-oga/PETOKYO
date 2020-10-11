class Admin::SpotsController < ApplicationController
  def index
  	@spots = Spot.all
  end

  def edit
  end

   private
  def spot_params
    params.permit(:url)
  end
end
