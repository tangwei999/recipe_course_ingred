class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def create
    Recipe.create(recipe_params)
    redirect_to recipes_path
  end

  def update
    m = Recipe.find(params[:id])
    m.update(recipe_params)
    redirect_to recipes_path
  end

  def destroy

  end

  private

  # this is used to prevent mass-assignment of parameters into ActiveRecord models
  def recipe_params
    params.require(:recipe).permit(:name, :instructions, :servings, :course_id)
  end

end
