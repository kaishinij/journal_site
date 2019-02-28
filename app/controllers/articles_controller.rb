class ArticlesController < ApplicationController
  def show
      @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  
  end

  def create
    @article = article.new(article_params)
    @article.save
    redirect_to "/articles"

  end

  private
  
  def article_params
    params.require(:article).permit(:title, :body)
  end
end
