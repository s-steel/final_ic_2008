require './lib/ingredient'
require './lib/pantry'
require 'minitest/autorun'
require 'minitest/pride'

class PantryTest < Minitest::Test

  def test_it_has_attributes
    pantry = Pantry.new
    expected = {}

    assert_instance_of Pantry, pantry
    assert_equal expected, pantry.stock
  end

  def test_check_stock
    pantry = Pantry.new
    ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 200})

    assert_equal 0, pantry.stock_check(ingredient1)
  end

  def test_restock
    pantry = Pantry.new
    ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 200})
    pantry.restock(ingredient1, 5)
    pantry.restock(ingredient1, 10)

    assert_equal 15, pantry.stock_check(ingredient1)

    pantry.restock(ingredient2, 7)

    assert_equal 7, pantry.stock_check(ingredient2)
  end
end
