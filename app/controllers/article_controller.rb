class ArticleController < ApplicationController
  def show
    @article = Article.all
  end

  def new
    @article = Article.new
  end

  def set
    @article = Article.find(params[:title])
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to article_show_path(@article)
  end

  private

  def article_params
    params.require(:article).permit(:title, :description)
  end

end