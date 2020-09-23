require './lib/ingredient'
require './lib/pantry'
require './lib/recipe'
require './lib/cook_book'
require 'minitest/autorun'
require 'minitest/pride'

class CookBookTest < Minitest::Test

  def test_it_has_attributes
    cookbook = CookBook.new

    assert_instance_of CookBook, cookbook
    assert_equal [], cookbook.recipes 
  end
end
