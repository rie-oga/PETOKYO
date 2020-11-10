class Admin::MembersController < ApplicationController
  def index
  	@members = Member.includes(:spots, :comments).all
  end

  def show
  	@member = Member.find(parasm[:id])
  end

  def edit
  	@member = Member.find(params[:id])
  end
end
