class InteractionsController < ApplicationController

  def new
    @interaction = Interaction.new
  end

  def create
    article = Article.find(params[:article_id])
    interaction = Interaction.new
    interaction.user = current_user
    interaction.article = article
    interaction.save!
    redirect_to articles_path
  end

  def show
    @interaction = Interaction.find(params[:id])
    redirect_to article_path(@interaction.article)
  end

  def interaction_params
    params.require(:interaction).permit()
  end
end
