class CommandesController < ApplicationController
  def index
    @commandes = Commande.all
  end

  def new
    @commande = Commande.new
  end

  def create
    @commande = Commande.new(commande_params)
    if @commande.save
      redirect_to commande_path(@commande)
    else
      render :new
    end
  end

  def edit
    @commande = Commande.find(params[:id])
  end

  def show
    @commande = Commande.find(params[:id])
    @articles = Article.all

  end

  def update
    @commande = Commande.find(params[:id])

    @commande.articles << Article.find_by(designation:params.require(:commande).permit(:articles)[:articles])
    redirect_to commande_path(@commande)
  end


end

private

def commande_params
  params.require(:commande).permit(:numeros, :table, :couverts, :statut, :payer)
end
def articles_add_params
  params.require(:commande).permit(:articles)[:articles]

end

