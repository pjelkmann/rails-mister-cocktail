class DosesController < ApplicationController
  def create
    dose = Dose.new(dose_params)
    dose.cocktail_id = params[:cocktail_id]
    dose.save
    redirect_to cocktail_path(params[:cocktail_id])
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.delete
    redirect_to cocktail_path(@dose.cocktail)
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
