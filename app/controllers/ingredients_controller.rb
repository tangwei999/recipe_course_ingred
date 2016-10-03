class IngredientsController < ApplicationController
  def index
    @ingredients = Ingredient.all
  end

  def show
    @ingredient = Ingredient.find(params[:id])
  end

  def new
    @ingredient = Ingredient.new
  end

  def edit
    @ingredient = Ingredient.find(params[:id])
  end

  def create
    Ingredient.create(ingredient_params)
    redirect_to ingredients_path
  end

  def update
    m = Ingredient.find(params[:id])
    m.update(ingredient_params)
    redirect_to ingredients_path
  end

  def destroy

  end

  private

  # this is used to prevent mass-assignment of parameters into ActiveRecord models
  def ingredient_params
    params.require(:ingredient).permit(:name)
  end
end
