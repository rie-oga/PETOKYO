class Member::MembersController < ApplicationController

  def index
  	@spots = current_member.spots
  end

  def show
    @member = Member.find(params[:id])
  	@spots = @member.spots.order(id:"DESC")#降順
    @comments = @member.comments.order(id:"DESC")#降順
    @spot = Spot.find_by(id: params[:spot_id])
  end

  def unsubscribe
  end

  def edit
  	@member = Member.find(current_member.id)
  end

   def update
    @member = Member.find(current_member.id)
    if @member.update(member_params)
      redirect_to member_member_path(current_member.id)
    else
      render :edit
    end
  end

  def withdraw
    @member = Member.find(current_member.id)
    #現在ログインしているユーザーを@userに格納
    @member.update(is_withdeawal_status: false)
    #updateで登録情報をfalseに変更
    reset_session
    #sessionIDのresetを行う
    redirect_to root_path
  end

  private
  def member_params
    params.require(:member).permit(:is_withdeawal_status,:name, :nick_name)
  end

end
