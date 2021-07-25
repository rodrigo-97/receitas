class CommentsController < ApplicationController
  before_action :set_recipe

  def index
    @comments = @recipe.comments
  end

  def new
    @comment = @recipe.comments.new
  end

  def create
    @comment = @recipe.comments.new(comment_params)

    if @recipe.save
      redirect_to recipe_comments_path(@recipe), notice: "Comentário criado com sucesso!"
    else
      render :new
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:name, :rating, :comment)
  end

  def set_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end
end
