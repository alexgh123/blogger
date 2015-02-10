class TagsController < ApplicationController

  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
    @tag.name = @tag.id #idk about this part
  end

  # def show
  #   @article = Article.find(params[:id])
  #   @comment = Comment.new
  #   @comment.article_id = @article.id
  # end

end
