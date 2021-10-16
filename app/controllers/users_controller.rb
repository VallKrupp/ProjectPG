class UsersController < ApplicationController
  before_action :admin_user,     only: :destroy
  def index
    @q = User.ransack(params[:q])
    @pagy, @users = pagy(@q.result(distinct: true))
  end

  def show
    @user= User.find(params[:id])
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_path
  end

  private
  
    def admin_user
     redirect_to(root_path) unless current_user.admin?
    end
end