class ArticlesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index]

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def rank
    @articles = Article.all
  end

end
