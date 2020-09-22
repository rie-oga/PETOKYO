class Member::MembersController < ApplicationController
  def show
  	@dogs = current_member.dogs
  end

  def unsubscribe
  end

  def edit
  	@user = User.find(params[:id])
  end
end
