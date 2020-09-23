class Member::SpotsController < ApplicationController
  def top
  end

  def about
  end

  def index
  	@spots = Spot.all
  end

  def show
  	@spot = Spot.find(params[:id])
  	@comment = Comment.new
  end
end
