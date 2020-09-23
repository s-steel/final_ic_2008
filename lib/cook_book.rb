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
  # ^^need to refactor is time^^
end

# require 'pry'; binding.pry
