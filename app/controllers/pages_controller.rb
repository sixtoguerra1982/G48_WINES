class PagesController < ApplicationController
  def index
     @wines = Wine.includes(:wines_strains).all
    # @wines = Wine.all
  end
end
