class ArticlesController < ApplicationController
  def index
     @articles = Article.all
  end

  def new
    @article = Article.new
  end
  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to articles_path
    else
      render :new

    end

  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)
    redirect_to articles_path
  end

  def destroy
     @article = Article.find(params[:id])
     @article.destroy
     flash[:notice] = 'Votre article a été supprimé'
    redirect_to articles_path
  end


end

private

  def article_params
      params.require(:article).permit(:designation, :prix)
  end

