class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def account
    @articles = current_user.articles.order(interactions: :desc)
  end
  def filter
    categorie = params[:categorie]
    if categorie == "Tout(e)s" 
      @articles = current_user.articles
    else
      @articles = current_user.articles.select {|article| article.get_tags.include?(categorie)}
    end
    render :account
  end
end
