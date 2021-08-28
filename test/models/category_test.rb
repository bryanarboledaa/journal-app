require "test_helper"

class CategoryTest < ActiveSupport::TestCase
  test "name is required" do
    category = Category.new
    category.name = "Category-1"
    category.description = "Test only"

    assert category.save
  end
end
