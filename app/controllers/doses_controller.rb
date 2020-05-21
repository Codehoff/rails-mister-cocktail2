class DosesController < ApplicationController   
    def new
        @dose = Dose.new(dose_params)
    end
  
    def create
      @cocktail = Cocktail.find(params[:cocktail_id])
      @dose = Dose.new(dose_params)
      @dose.cocktail = @cocktail
      @dose.save
      redirect_to cocktail_path(@cocktail)
    end

    def destroy
        @dose = Dose.find(params[:id])
        @cocktail = @dose.cocktail
        @dose.destroy
        redirect_to "/cocktails/#{@cocktail.id}"
      end
  
    private
  
    def dose_params
      params.require(:dose).permit(:description, :ingredient_id, :cocktail_id)
    end
  
  end
  