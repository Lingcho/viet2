class TablesController < ApplicationController


  def index
    @tables = Table.all
  end

  def new
    @table = Table.new
    @articles = Ingredient.all
    @boissons = Boisson.all
  end

  def create
    @table = Table.new(table_params)
    @commande = Commande.new
    @articles = Ingredient.all
    @boissons = Boisson.all

    if @table.save
      respond_to do |format|
        format.html { redirect_to table_path(@table) }
        format.js
      end
    else
      respond_to do |format|
        format.html { render :new }
        format.js
      end
    end
  end

  def show
    @table = Table.find(params[:id])
    @commande = Commande.new
    @articles = Articles.all
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
      table_params = params.require(:table).permit(:numeros, :couverts)
  end


