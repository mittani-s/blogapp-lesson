class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    # :idはrails/infoにあるpathにある:idのこと
    @article = Article.find(params[:id])
  end

  def new
    
  end
end