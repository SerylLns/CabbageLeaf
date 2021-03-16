class ArticlesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index]
  
  def index
    @articles = Article.all
  end

  def show
    @artcile = Article.find(params[:id])
  end

  def rank
    @articles = Article.all
  end

end
