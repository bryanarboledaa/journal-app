require "test_helper"

class TasksControllerTest < ActionDispatch::IntegrationTest
  
  test "Test tasks#index" do
    assert_routing({ method: 'get', path: category_tasks_path(category_id: 1) }, { controller: 'tasks', action: 'index', category_id: "1" })
  end

  test "Test tasks#create" do
    assert_routing({ method: 'post', path: category_tasks_path(category_id: 1) }, { controller: 'tasks', action: 'create', category_id: "1" })
  end

  test "Test tasks#show" do
    assert_routing({ method: 'get', path: category_task_path(category_id: 1, id: 1) }, { controller: 'tasks', action: 'show', category_id: "1", id: "1" })
  end

  test "Test tasks#update" do
    assert_routing({ method: 'put', path: category_task_path(category_id: 1, id: 1) }, { controller: 'tasks', action: 'update', category_id: "1", id: "1" })
  end

  test "Test tasks#edit" do
    assert_routing({ method: 'get', path: edit_category_task_path(category_id: 1, id: 1) }, { controller: 'tasks', action: 'edit', category_id: "1", id: "1" })
  end

  test "Test tasks#new" do
    assert_routing({ method: 'get', path: new_category_task_path(category_id: 1) }, { controller: 'tasks', action: 'new', category_id: "1" })
  end

  test "Test tasks#destroy" do
    assert_routing({ method: 'delete', path: category_task_path(category_id: 1, id: 1) }, { controller: 'tasks', action: 'destroy', category_id: "1", id: "1" })
  end

  test "Should go to categories index" do
    get categories_path
    assert_response :success
  end

end
