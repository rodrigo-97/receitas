class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find_by(params[:id])
  end

  def edit
    @recipe = Recipe.find_by(params[:id])
  end

  def update
    @recipe = Recipe.find_by(params[:id])
    @recipe.update(recipe_params)
    redirect_to recipes_path
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.save
    redirect_to recipes_path
  end

  def destroy
    @recipe = Recipe.find_by(params[:id])
    @recipe.destroy
    redirect_to recipes_path
  end

  def recipe_params
    params.require(:recipe).permit(:name, :stuff, :calories, :prepare_mode, :cost)
  end
end
