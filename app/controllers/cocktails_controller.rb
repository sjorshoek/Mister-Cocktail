class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktails = Cocktail.new(params_cocktails)
    @cocktails.save
    redirect_to cocktails_path
  end

  def params_cocktails
    params.require(:cocktail).permit(:name)
  end
end
