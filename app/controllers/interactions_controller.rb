class InteractionsController < ApplicationController
  before_action :get_article, only: [:create, :like, :read]

  def create
    interaction = current_user.find_interaction(@article)
    if  interaction && interaction.read_later == true
      redirect_to article_path(@article), notice: "interaction deja save "
    elsif interaction
      interaction.read_later = true
      interaction.save
      redirect_to article_path(@article), notice: "interaction save "
    else
      interaction = Interaction.create(user: current_user, article: @article)
      interaction.read_later = true
      interaction.save
      redirect_to article_path(@article), notice: "interaction créer et save"
    end
  end

  def show
    @interaction = Interaction.find(params[:id])
    redirect_to article_path(@interaction.article)
  end

  def like
    interaction = current_user.find_interaction(@article)
    if  interaction && interaction.liked == true
      redirect_to article_path(@article), notice: "interaction deja liké "
    elsif interaction
      interaction.liked = true
      interaction.save
      redirect_to article_path(@article), notice: "interaction liké "
    else
      interaction = Interaction.create(user: current_user, article: @article)
      interaction.liked = true
      interaction.save
      redirect_to article_path(@article), notice: "interaction créer et liké "
    end
  end

  def read
    interaction = current_user.find_interaction(@article)
    # deja lu
    if interaction && interaction.has_read == true  
    elsif interaction 
      # jamais lu mais enregistrer pour plus tard ou liké
      interaction.has_read = true
      interaction.save
      redirect_to article_path(@article)
    else
      # Jamais lu et jamais liké ou enregistrer  
      interaction = Interaction.new(user: current_user, article: @article)
      interaction.has_read = true
      interaction.save!
      redirect_to article_path(@article)
    end
  end

  private

  def interaction_params
    params.require(:interaction).permit()
  end

  def get_article
    @article = Article.find(params[:article_id])
  end
end
