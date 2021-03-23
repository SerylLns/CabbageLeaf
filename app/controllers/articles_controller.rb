class ArticlesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index]

  def index
    if params[:a] #???? sa marche ?????
      sleep(3)
    end
    @articles = Article.all
    @interaction = Interaction.new
  end
  
  def show
      @article = Article.find(params[:id])
  end

  def rank
    @articles_liked = Article.all.joins(:interactions).where('interactions.liked = true').order("interactions asc").limit(3)
    @articles_read = Article.all.joins(:interactions).where('interactions.has_read = true').order("interactions asc").limit(3)
    @articles_saved = Article.all.joins(:interactions).where('interactions.read_later = true').order("interactions asc").limit(3)
  end

end
