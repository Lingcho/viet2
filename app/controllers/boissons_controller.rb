class BoissonsController < ApplicationController
 def index
     @boissons = Boisson.all
  end

  def new
    @boisson = Boisson.new
  end
  def create
    @boisson = Boisson.new(boisson_params)
    if @boisson.save
      redirect_to boissons_path
    else
      render :new

    end

  end

  def show
    @boisson = Boisson.find(params[:id])
  end

  def edit
    @boisson = Boisson.find(params[:id])
  end

  def update
    @boisson = Boisson.find(params[:id])
    @boisson.update(boisson_params)
    redirect_to boissons_path
  end

  def destroy
     @boisson = Boisson.find(params[:id])
     @boisson.destroy
     flash[:notice] = 'Votre boisson a été supprimé'
    redirect_to boissons_path
  end


end

private

  def boisson_params
      params.require(:boisson).permit(:nom, :prix)
  end

