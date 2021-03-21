class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def account
    @articles = current_user.articles.order(interactions: :desc)
  end
  def filter
    categorie = params[:categorie]
    @articles = current_user.articles.select {|article| article.get_tags.include?(categorie)}
    render :account
  end
end
