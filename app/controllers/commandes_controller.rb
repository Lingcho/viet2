class CommandesController < ApplicationController
  def new
    @table = Table.find(params[:table_id])
    @commande = Dose.new
    @article = Article.all
  end

  def create
    @commande = Commande.new(commandes_params)
    @table = Table.find(params[:table_id])
    @commande.table = @table

    if @commande.save
      respond_to do |format|
        format.js
      end
    else
      @article = Article.all
      respond_to do |format|
        format.js
      end
    end
  end

  def destroy
    @commande = Commande.find(params[:id])
    @commande.destroy
    respond_to do |format|
        format.js
    end
  end

  private

  def commandes_params
    params.require('commande').permit(:num, :commande_id)
  end
end
