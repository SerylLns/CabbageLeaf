class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def account
    @article = Article.new
    interactions = current_user.interactions.where("interactions.read_later = true")
    # @articles = current_user.articles.order(interactions: :desc)
    @articles = interactions.map {|int| int.article}
  end

  def filter
    categorie = params[:categorie]
    if categorie == "Toutes"
      @articles = current_user.articles
    else
      @articles = current_user.articles.select {|article| article.get_tags.include?(categorie)}
    end
    render :account
  end
end
