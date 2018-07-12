#$i=0
class ArticlesController < ApplicationController
  def index
    @article = Article.all
  end

  def new
    @article = Article.new
  end

  def show
    @article = Article.find(params[:id])
  end
  def edit

  end
  def destroy
    @article=Article.find(params[:id])
    #@article.destroy_all
    @article.destroy
    redirect_to articles_path
  end
  def create

    @article = Article.new(article_params)
    if @article.save
    flash[:notice]="Article Successfully created"
    #if $i>4
    redirect_to articles_path
    #else
     # $i+=1
     # redirect_to new_article_path
     # end
    else
      render 'new'
      end
  end

  private

  def article_params
    params.require(:article).permit(:title, :description)
  end



end