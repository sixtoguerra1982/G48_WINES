class PagesController < ApplicationController
  def index
     @wines = Wine.includes(:wines_strains, :strains,:wines_oenologists,:oenologists).all.order(:name)
    # @wines = Wine.all
  end
end
