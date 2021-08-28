require "test_helper"

class CategoriesControllerTest < ActionDispatch::IntegrationTest
  
  # test "should go to new" do
  #   get categories_new_path
  #   assert_response :success
  # end

  # test "should be able to redirect after create" do
  #   post create_category_path, params: { category: { name: 'Test-Category-No-1', description: 'testing #1 only' } }
  #   assert_response :redirect
  # end

  test "should be able to edit category" do
    put update_category_path, params: { category: { name: 'Edit category', description: 'test edit category' } }
    assert_response :success
  end

end
