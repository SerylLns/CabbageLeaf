class InteractionsController < ApplicationController

  def new
    @interaction = Interaction.new
  end

  def create
    #si l'utilisateur a cette article avec read_later return index
    # sinon
    article = Article.find(params[:article_id])
    if interaction_exist?(article)
      redirect_to articles_path, notice: "Vous avez déja enregistrer cet article :)" 
      return
    end
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

  private

  def interaction_params
    params.require(:interaction).permit()
  end

  def interaction_exist?(article)
    interactions = current_user.interactions
    interactions.each do |int|
      if int.article == article
        return true
      end
    end
    return false
  end

end
