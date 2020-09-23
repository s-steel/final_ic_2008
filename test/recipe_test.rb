require './lib/ingredient'
require './lib/pantry'
require './lib/recipe'
require 'minitest/autorun'
require 'minitest/pride'

class RecipeTest < Minitest::Test

  def test_it_has_attributes
    recipe1 = Recipe.new("Mac and Cheese")
    expected = {}

    assert_instance_of Recipe, recipe1
    assert_equal "Mac and Cheese", recipe1.name
    assert_equal expected, recipe1.ingredients_required
  end
end
