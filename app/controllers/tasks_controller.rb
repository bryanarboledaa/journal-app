class TasksController < ApplicationController
  before_action :get_category

  def index
    @category_id = params[:category_id]
    @tasks = Category.find(params[:category_id]).tasks
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = @category.tasks.build
  end

  def create
    @task = @category.tasks.build(task_params)

    if @task.save
      redirect_to category_tasks_path
    else
      render :new
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to category_tasks_path(@task.category_id)
    else 
      render :edit
    end
  end

  def delete
    @task = Task.find(params[:id])
    if @task.destroy
      redirect_to category_tasks_path
    else :index
    end
  end


  private

  def get_category
    @category = Category.find(params[:category_id])
  end

  def task_params
    params.require(:task).permit(:task_name, :task_description, :category_id)
  end

end
