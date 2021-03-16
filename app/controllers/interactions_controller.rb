class InteractionsController < ApplicationController

  def new
    @interaction = Interaction.new
  end

  def show
    @interaction = Interaction.find(params[:id])
    redirect_to article_path(@interaction.article)
  end
end
