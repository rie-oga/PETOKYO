class Admin::SpotsController < ApplicationController
  def index
  	@spots = Spot.all
  end

  def show
  	@spot = Spot.find(params[:id])
  end

  def new
  end

  def edit
  end
end
