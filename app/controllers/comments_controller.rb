class CommentsController < ApplicationController
	before_action :set_comment, only: [:destroy]
	skip_before_filter :verify_autenticity_token

	def create
		@post=Post.find(params[:post_id]) 
		@post.comments.create(comments_params) 

		redirect_to @post 
	end

	def destroy
		# @comment=Comment.find(params[:comment_id]) 
		# @post.comments.destroy

		# redirect_to @post 

		@comment.destroy
		respond_to do |format|
	      format.html { redirect_to "/index1", notice: 'Comentario eliminado.' }
	      format.json { head :no_content }
	    end
	end

	private
		def set_comment
	      @comment = Comment.find(params[:id])
	    end

		def comments_params
			params.require(:comment).permit(:text, :name, :email)
		end
	


end
