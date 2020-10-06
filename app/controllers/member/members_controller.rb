class Member::MembersController < ApplicationController

  def index
  	@spots = current_member.spots
  end

  def show
  	@spots = current_member.spots.order(id:"DESC")#降順
    @comments = current_member.comments.order(id:"DESC")#降順
    @spot = Spot.find_by(id: params[:spot_id])
  end

  def unsubscribe
  end

  def edit
  	@member = Member.find(params[:id])
  end
end
