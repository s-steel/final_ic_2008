class CookBook
  attr_reader :recipes
  def initialize
    @recipes = []
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def ingredients
    @recipes.map do |recipe|
      array = []
      recipe.ingredients.each do |ingredient|
        array << ingredient.name
      end
      array
    end.flatten.uniq
  end
  # ^^need to refactor if time^^

  def highest_calorie_meal
    @recipes.max do |recipe|
      recipe.total_calories
    end
  end
end
