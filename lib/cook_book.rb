require 'Date'

class CookBook
  attr_reader :recipes, :date
  def initialize
    @recipes = []
    @date = Date.today.strftime('%m-%d-%Y')
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def ingredients
    @recipes.map do |recipe|
      recipe.ingredients_by_name
    end.flatten.uniq
  end

  def highest_calorie_meal
    @recipes.max do |recipe|
      recipe.total_calories
    end
  end
end
