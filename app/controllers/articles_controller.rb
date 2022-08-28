class ArticlesController < ApplicationController
  def show
    # binding.break
    @article = Article.find(params[:id])
  end

  def index
    @articles = Article.all
  end

  def new
    # render 'new'
    @article = Article.new
  end

  def create
    puts article_params
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end

  private
    def article_params
      params.require(:article).permit(:title, :description)
    end
end
