class Member::MembersController < ApplicationController

  def index
  	@spots = current_member.spots
  end

  def show
  	@spots = current_member.spots
    @comments = current_member.comments
  end

  def unsubscribe
  end

  def edit
  	@member = Member.find(params[:id])
  end
end
