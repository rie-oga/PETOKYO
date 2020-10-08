class Member::CommentsController < ApplicationController

	def create
		comment = Comment.new(comment_params)
		comment.member_id = current_member.id
		comment.spot_id = params[:comment][:spot_id]
		comment.save
		redirect_to member_spot_path(comment.spot_id)
	end

	def destroy
		comment = Comment.find(params[:id])
		comment.destroy
      	flash[:success] = "Review was successfully deleted."
    	redirect_to member_member_path(comment.member)
	end

	def update
		 member = Member.find(params[:id])
    	 if @member.update(member_params)
      		redirect_to member_members_my_page_path
    	 else
      		render :edit
    	 end
	end

	private
  	def comment_params
    	params.require(:comment).permit(:comment, :rate)
  	end



end
