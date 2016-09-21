class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find params[:id]
  end

  def new
    @article = Article.new
    @article.comments.build
  end

  def create
    @article = Article.create(params.require(:article).permit(:title, :content, comments_attributes:[:from, :title]))

    if @article.valid?
      redirect_to @article
    else
      render :new
    end
  end
end
