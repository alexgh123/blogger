class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.article_id = params[:article_id]

    @comment.save

    redirect_to article_path(@comment.article)

  end

  def comment_params
    params.require(:comment).permit(:author_name, :body)
  end
end

 # def create
 #    @article = Article.new(article_params)
 #    @article.save

 #    flash.notice = "Article 'Article '#{@article.title}' created!"

 #    redirect_to article_path(@article)
 #  end

