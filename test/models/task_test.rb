require "test_helper"

class TaskTest < ActiveSupport::TestCase
  
  test "Should not save because there is no task_name" do
    task = Task.new
    task.task_description = "Test task description"

    assert_not task.save
  end

  test "Should not save because there is no task_description" do
    task = Task.new
    task.task_name = "Test task name"

    assert_not task.save
  end

end
