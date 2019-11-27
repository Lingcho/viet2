class TicketsController < ApplicationController
  def new
    @table = Table.find(params[:table_id])
    @articles = Articles.all
  end

  def create
    @ticket = Ticket.new(article_id:article_ticket_params)
    @table = Table.find(params[:table_id])
    @ticket.table = @table

    if @ticket.save
      redirect_to table_path(@table)
    else
      redirect_to table_path(@table)
    end
  end


  def edit
      @dose = Dose.find(params[:id])

  end
  #def update
  #  @ticket = Dose.find(params[:id])
  #  @dose.update(dose_params)
    #redirect_to cocktail_path(@dose.cocktail)
  #end

  def destroy

    @ticket = Ticket.find(params[:id])
    @table = @ticket.table
    @ticket.destroy
    redirect_to table_path(@table)



  end

  def article_ticket_params
    params.require(:ticket)[:article_id]

  end
end
