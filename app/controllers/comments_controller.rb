class CommentsController < ApplicationController
  def create
    @article = Article.find(params[ :article_id])
    @comment = @article.comments.create(comment_params) #create and save the comment to a particular article
    redirect_to article_path(@article)
  end
  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(comment_params[:id])
    @comment.destroy
    redirect_to article_path(@article)
  end

  private
  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end
