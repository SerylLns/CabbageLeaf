class InteractionsController < ApplicationController

  def create
    #si l'utilisateur a cette article avec read_later return index
    # sinon
    article = Article.find(params[:article_id])
    interaction = Interaction.new
    interaction.user = current_user
    interaction.article = article
    interaction.read_later = true
    interaction.save!
    redirect_to articles_path, notice: "Article enregistrer avec succées :)"
  end

  def show
    @interaction = Interaction.find(params[:id])
    redirect_to article_path(@interaction.article)
  end

  def like
    article = Article.find(params[:article_id])
    interaction = current_user.find_interaction(article)
    if  interaction
      interaction.liked = true
      interaction.save
    else
      # interaction = create
      interaction.save
    end
    redirect_to article_path(article)
  end

  private

  def interaction_params
    params.require(:interaction).permit()
  end


end
