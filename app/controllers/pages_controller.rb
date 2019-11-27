class PagesController < ApplicationController
  def cuisine
    @tables = Table.all

  end
end

