class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def account
    @articles = current_user.articles.order(interactions: :desc)
  end
end
