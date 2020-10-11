class Member::CommentsController < ApplicationController
	before_action :authenticate_member!
	before_action :ensure_correct_user, only: [:edit, :update, :destroy]

	def create
		comment = Comment.new(comment_params)
		comment.member_id = current_member.id
		comment.spot_id = params[:comment][:spot_id]
		if comment.save
		   redirect_to member_spot_path(comment.spot)
		else
		   @spot = comment.spot_id
		   @comment = Comment.new
		   render :edit
		end
	end

	def destroy
		@comment.destroy
      	flash[:success] = "Review was successfully deleted."
    	redirect_to member_member_path(@comment.member)
	end

	def edit
		@spot = @comment.spot
	end

	def update
    	 if @comment.update(comment_params)
      		redirect_to member_member_path(@comment.member)
    	 else
    	 	flash[:notice] = "☆評価は必須です。"
      		render :edit
    	 end
	end

	private
  	def comment_params
    	params.require(:comment).permit(:comment, :rate, comment_images_images: [])
  	end

  	def ensure_correct_user
  		@comment = Comment.find(params[:id])
  	end

end
