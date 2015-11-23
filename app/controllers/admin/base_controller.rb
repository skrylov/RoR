class Admin::BaseController < ApplicationController
  before_action :authenticate_user!
  before_action :check_admin

  layout 'admin'

  def check_admin
    unless current_user.admin?
      redirect_to root_path, alert: 'У вас нет прав просмотра этой страницы'


    end
  end

end