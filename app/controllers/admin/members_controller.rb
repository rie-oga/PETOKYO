class Admin::MembersController < ApplicationController
  def index
    @members = Member.includes(:spots, :comments).all
    @member_spot_counts = Member.includes(:spots).map { |m| [m.id, m.spots.size] }
    @member_comment_counts = Member.eager_load(:comments).map { |m| [m.id, m.comments.size] }
  end

  def show
    @member = Member.find(parasm[:id])
  end

  def edit
    @member = Member.find(params[:id])
  end
end
