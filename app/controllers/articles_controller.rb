class ArticlesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index]

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def rank
    articles = Article.all
    likes = articles.interactions.where(liked = true)
    reads
    saves

    @most_liked = articles(:order => "")
    @most_read
    @most_saved
  end

end
