module RecipesHelper
  def format_calory(recipe)
    if recipe.calories > 100
      recipe.calories
    else
      content_tag(:strong, 'Light (menos de 100 calorias)')
    end
  end

  def has_image (recipe)
    if recipe.poster.blank?
      image_tag('https://upload.wikimedia.org/wikipedia/commons/thumb/6/65/No-Image-Placeholder.svg/1200px-No-Image-Placeholder.svg.png', class: "img-fluid fix_image")
    else
      image_tag(recipe.poster, class:"img-fluid fix_image")
    end
  end
end
