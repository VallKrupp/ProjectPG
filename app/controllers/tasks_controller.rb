class TasksController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  before_action :set_task, only: %i[ show edit update destroy ]

  def index
    @pagy, @tasks = pagy(Task.all)
  end

  def show

  end

  def new
    @task = Task.new
  end

  def edit
    unless @task.user === current_user
      redirect_to tasks_path, alert: "You shold be authorized"
    end
  end

  def create
    @task = Task.new(task_params)
    @task .user = current_user
      if @task.save
         redirect_to @task, notice: "Task was successfully created." 
      else
         render :new, status: :unprocessable_entity 
      end
    end

  def update
    unless @task.user === current_user
      redirect_to tasks_path, alert: "You shold be authorized"
    else
      if @task.update(task_params)
        redirect_to @task, notice: "Task was successfully updated." 
      else
        render :edit, status: :unprocessable_entity 
      end
    end
  end

  def destroy
    if @task.user === current_user
      @task.destroy
      redirect_to tasks_url, notice: "Task was successfully destroyed." 
    else
      redirect_to tasks_path, alert: "You shold be authorized"
  end
end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task = Task.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def task_params
      params.require(:task).permit(:title, :body)
    end
end
