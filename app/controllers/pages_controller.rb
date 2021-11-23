class PagesController < ApplicationController
  def index
     @wines = Wine.includes(:wines_strains, :strains).all.order(:name)
    # @wines = Wine.all
  end
end
