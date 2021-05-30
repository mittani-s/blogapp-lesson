class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    # :idはrails/infoにあるpathにある:idのこと
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save
    if @article.save
      redirect_to article_path(@article)
    else
      render :new
    end
  end

  private
  def article_params
    params.require(:article).permit(:title, :content)
  end
end