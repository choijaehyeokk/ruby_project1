class CommentsController < ApplicationController    
    def create
        @lang = Language.find_by langName: params[:langName]
        @post = Post.find(params[:post_id])
        @comment = @post.comments.create(comment_params)
        @comment.writer = current_user.email
        @comment.save()
        redirect_to post_path(@lang.langName, @post)
    end

    def destroy
        @lang = Language.find_by langName: params[:langName]
        @post = Post.find(params[:post_id])
        @comment = @post.comments.find(params[:id])
        @comment.destroy
        redirect_to post_path(@lang.langName, @post)
    end

    private
        def comment_params
            params.require(:comment).permit(:title, :body, :writer)
        end
end
