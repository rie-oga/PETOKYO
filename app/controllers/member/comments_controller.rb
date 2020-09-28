class Member::CommentsController < ApplicationController

	def create
		comment = Comment.new(comment_params)
		comment.member_id = current_member.id
		comment.spot_id = params[:comment][:spot_id]
		comment.save
		redirect_to root_path
	end

	def destroy
		Comment.find_by(id: params[:id], spot_id: params[:spot_id]).destroy
    	redirect_back fallback_location: root_path(params[:spot_id])
	end

	private
  	def comment_params
    	params.require(:comment).permit(:comment, :rate)
  	end



end
