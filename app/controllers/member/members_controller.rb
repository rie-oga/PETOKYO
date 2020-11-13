class Member::MembersController < ApplicationController
  before_action :authenticate_member!
  before_action :ensure_correct_member, only: [:show, :edit, :update]

  def index
    @spots = current_member.spots
  end

  def show
    @spots = @member.spots.order(id: "DESC") # 降順
    @comments = @member.comments.order(id: "DESC") # 降順
    @spot = Spot.find_by(id: params[:spot_id])
    @comment = Comment.find_by(id: params[:comment_id])
  end

  def unsubscribe
  end

  def edit
  end

  def update
    if @member.update(member_params)
      redirect_to member_member_path(current_member.id)
    else
      render :edit
    end
 end

  def withdraw
    @member = Member.find(params[:id])
    # 現在ログインしているユーザーを@userに格納
    @member.update(is_withdeawal_status: false)
    # updateで登録情報をfalseに変更
    reset_session
    # sessionIDのresetを行う
    redirect_to root_path
  end

  private

  def member_params
    params.require(:member).permit(:is_withdeawal_status, :nick_name, :profile_image)
  end

  def ensure_correct_member
    @member = Member.find(params[:id])
    unless @member == current_member || current_admin
      redirect_to member_spots_path
    end
  end
end
