class PagesController < ApplicationController
  def home
  end

  def tables
    @affichage = params[:vip]
  end
end
