class Admin::UsersController < Admin::BaseController

  def index
    @users = User.all
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to admin_users_path, notice: 'Юзер успешно удален'
  end


end