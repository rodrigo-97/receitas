module RecipesHelper
  def format_calory(recipe)
    if recipe.calories > 100
      recipe.calories
    else
      content_tag(:strong, 'Light (menos de 100 calorias)')
    end
  end
end
