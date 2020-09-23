class Recipe
  attr_reader :name, :ingredients_required
  def initialize(name)
    @name = name
    @ingredients_required = Hash.new(0)
  end

  def add_ingredient(ingredient, quantity)
    @ingredients_required[ingredient] += quantity
  end

  def ingredients
    @ingredients_required.keys
  end

  def ingredients_by_name
    ingredients.map do |ingredient|
      ingredient.name
    end
  end

  def total_calories
    @ingredients_required.sum do |ingredient, quantity|
      ingredient.calories * quantity
    end
  end
end
