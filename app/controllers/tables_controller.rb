class TablesController < ApplicationController


  def index
    @tables = Table.all
  end

  def new
    @table = Table.new
    @articles = Article.all
    @boissons = Boisson.all
  end

  def create
    @table = Table.new(table_params)
    #@commande = Commande.new
    #@articles = Article.all
    #@boissons = Boisson.all

    if @table.save
      redirect_to tables_path

    else
      render :new

    end
  end

  def show
    @table = Table.find(params[:id])
    @commande = Commande.new
    @articles = Article.all
    @boissons = Boisson.all
  end

  def edit
    @table = Table.find(params[:id])

  end

  def update
    @table = Table.find(params[:id])
    @table.update(table_params)
    redirect_to tables_path

  end

  def destroy
    @table = Table.find(params[:id])
    @table.destroy
    flash[:notice] = 'Votre table a été supprimé'
    redirect_to tables_path
  end

end

private

  def table_params
      params.require(:table).permit(:numeros, :couverts)
  end

