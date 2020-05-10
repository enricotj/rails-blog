class ArticlesController < ApplicationController

  # User should be authenticated for every action except for index and show.
  http_basic_authenticate_with name: "dhh", password: "secret", except:[:index, :show]

  # CREATE
  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render 'new'
    end

  end

  # READ
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  # UPDATE
  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end

  end

  # DESTROY
  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to articles_path
  end

  private
    def article_params
      params.require(:article).permit(:title, :text)
    end
end
