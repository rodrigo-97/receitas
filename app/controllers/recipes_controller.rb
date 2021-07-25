class RecipesController < ApplicationController
  before_action :set_recipe, except: [:index, :new, :create]

  def index
    @recipes = Recipe.created_at
  end

  def update
    if @recipe.save
      @recipe.update(recipe_params)
      redirect_to recipes_path, notice: "Receita alterada com sucesso!"
    else
      render :update
    end
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      redirect_to recipes_path, notice: "Receita criada com sucesso!"
    else
      render :new
    end
  end

  def destroy
    @recipe.destroy
    redirect_to recipes_path, alert: "Receita deletada com sucesso!"
  end

  private
  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:name, :stuff, :calories, :prepare_mode, :cost, :kind, :portion, :duration, :poster)
  end
end
