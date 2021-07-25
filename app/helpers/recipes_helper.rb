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
      image_tag('https://cdn.neemo.com.br/uploads/settings_webdelivery/logo/1630/no-image.png', class: "fix_image card_height")
    else
      image_tag(recipe.poster, class:"fix_image card_height")
    end
  end
end
