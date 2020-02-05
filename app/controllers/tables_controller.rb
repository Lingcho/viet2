class TablesController < ApplicationController

def cuisine
  @tables = Table.all

end


  def index
    @tables = Table.all

  end

  def new
    @table = Table.new
    @articles = Article.all

  end

  def create
    @table = Table.new(tables_params)
    @ticket = Ticket.new
    @articles = Article.all
    if @table.save
      @ticket = Ticket.new


      redirect_to table_path(@table)
    else
      render :new
    end
  end

  def edit
    @table = Table.find(params[:id])
  end

  def show
    @table = Table.find(params[:id])
    @articles = Article.all
    @ticket = Ticket.new


    @total_table = calcul(@table)

  end

  def update
    @table = Table.find(params[:id])
    @table.update(tables_params)
    redirect_to cuisine_path

  end

  def destroy
    table = Table.find(params[:id])

    table.destroy


    redirect_to tables_path

  end



end



def calcul(table)
        total = table.articles.map do |article|
          article.prix
        end
        total.sum
end

def fini(table)
  table.pret = true
  table.save
end

private

def tables_params
  params.require(:table).permit(:nom, :couvert, :pret, :id)
end


