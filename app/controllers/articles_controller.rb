class ArticlesController < ApplicationController
	def index
		@articles = Article.all
    p @article
	end

	def new
		@article = Article.new
	end

	def create
    @article = current_user.articles.new(article_params)

    if @article.save
      redirect_to @article
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

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit
    end
  end

  def destroy
    Article.destroy(params[:id])
  end

  private

  def article_params
    params.require(:article).permit(:title, :body, :user_id)
  end
end
