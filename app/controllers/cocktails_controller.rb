class CocktailsController < ApplicationController
    before_action :set_cocktail, only: [:show, :destroy]
  
    def index
      @cocktails = Cocktail.all
    end
  
    def show
      @dose = Dose.new
    end
  
    def new
      @cocktail = Cocktail.new
      @dose = Dose.new
    end

    def destroy
        @cocktail.doses
        redirect_to "/cocktails"
    end

    def create
      @cocktail = Cocktail.new(cocktail_params)
  
      if @cocktail.save
        redirect_to "/cocktails", notice: 'Cocktail was successfully created.'
      else
        render :new
      end
    end
  
    private
  
    def set_cocktail
      @cocktail = Cocktail.find(params[:id])
    end
  
    def cocktail_params
      params.require(:cocktail).permit(:name, :dose_id, :ingredient_id)
    end
    
  end
  