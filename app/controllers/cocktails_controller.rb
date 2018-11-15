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
    @cocktail = Cocktail.create(cocktails_params)
    if @cocktail.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
  end

  def update
    @cocktail = Cocktail.update(cocktails_params)
    redirect_to cocktail_path(@cocktail)
  end

  def destroy
    @cocktail = Cocktail.find(params[:id])
    @cocktail.delete
    redirect_to root_path
  end

  private

  def cocktails_params
    params.require(:cocktail).permit(:name)
  end
end
