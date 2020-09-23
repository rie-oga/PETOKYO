class Member::MembersController < ApplicationController

  def index
  	@spots = current_member.spots
  end

  def show
  	@dogs = current_member.dogs
  end

  def unsubscribe
  end

  def edit
  	@member = Member.find(params[:id])
  end
end
