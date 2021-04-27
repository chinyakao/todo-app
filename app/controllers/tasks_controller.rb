class TasksController < ApplicationController
  before_action :set_task, :only =>[:show, :edit, :update, :destroy]
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save

    redirect_to tasks_url, :notice => "Create Notice: 建立成功!"
  end

  def show
  end

  def edit
  end

  def update
    @task.update(task_params)

    redirect_to task_path(@task), :notice => "Update Notice: 更新成功!"
  end

  def destroy
    @task.destroy
    redirect_to tasks_url, :notice => "Destroy Notice: 刪除成功"
  end

  private

  def set_task
    @task = Task.find(params[:id])     #重複宣告的實例變數
  end

  def task_params
    params.require(:task).permit(:title, :content)
  end

end
