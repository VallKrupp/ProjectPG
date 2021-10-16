module SessionsHelper

  def current_task
    @current_task = Task.find(params[:id])
  end
  
#потом убрать эту херню
  def current_user?(user)
    user == current_user
  end

end
