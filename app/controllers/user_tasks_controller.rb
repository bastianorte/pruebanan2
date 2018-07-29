class UserTasksController < ApplicationController
before_action :authenticate_user!
  def create
    @task = Task.find(params[:task_id])
    @user_task = UserTask.find_or_create_by(task: @task, user: current_user )
    if @user_task.check == true
    @user_task.update(task: @task, user: current_user, check: false )
    else
    @user_task.update(task: @task, user: current_user, check: true )
    end
    if @task.save
      redirect_to user_tasks_path, notice: 'Tarea ingresada'
    else
      redirect_to tasks_path, alert: 'Tarea no ingresada'
    end
  end


def index
  @user_task = current_user.user_tasks.where(check: true)
end

end
