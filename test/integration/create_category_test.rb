require 'test_helper'

class CreateCategoryTest < ActionDispatch::IntegrationTest
  test "should go to category path and create new category" do
    get categories_new_path
    assert_response :success

    assert_difference 'Category.count', 1 do
      post create_category_path, params: { category: {name: 'Test Thing', description: 'This Test Things test'} }
      assert_response :redirect
    end
    follow_redirect!
    assert_response :success
  end
end