require "test_helper"

class CategoryTest < ActiveSupport::TestCase
  
  test "Should not save because there is no category name" do
    category = Category.new
    category.description = "Test only"

    assert_not category.save
  end

  test "Should not save because there is no category description" do
    category = Category.new
    category.name = "Test category"

    assert_not category.save
  end

end
