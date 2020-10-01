class Member::CommentsController < ApplicationController

	def create
		comment = Comment.new(comment_params)
		comment.member_id = current_member.id
		comment.spot_id = params[:comment][:spot_id]
		comment.save
		redirect_to root_path
	end

	def destroy
		comment = current_member.comments.find(params[:id])
		comment.destroy
    	redirect_to member_spots_path
	end

	private
  	def comment_params
    	params.require(:comment).permit(:comment, :rate)
  	end



end
