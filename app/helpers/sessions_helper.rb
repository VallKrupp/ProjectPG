module SessionsHelper

  def current_user?(user)
    user == current_user
  end

  def current_task
    @current_task = Task.find(params[:id])
  end

end
