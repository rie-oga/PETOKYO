class Member::CommentsController < ApplicationController

	def create
		comment = Comment.new(comment_params)
		comment.member_id = current_member.id
		comment.spot_id = params[:comment][:spot_id]
		comment.save
		redirect_to member_spot_path(comment.spot_id)
	end

	def destroy
		member = Member.find(params[:id])
		comment = member.comments.find(params[:id])
		comment.destroy
    	redirect_to member_member_path(mmeber)
	end

	def edit
	end

	private
  	def comment_params
    	params.require(:comment).permit(:comment, :rate)
  	end



end
