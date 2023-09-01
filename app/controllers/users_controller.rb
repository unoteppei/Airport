class UsersController < ApplicationController
  before_action :authenticate_user!

  def character; end

  def image
  end
  
  def show
    @user = User.find(params[:id])
  end

  def update
    @user = current_user
    if @user.update_attributes(current_user_params)
      flash[:notice] = '保存しました'
    else
      flash[:alert] = '更新できません'
    end
    redirect_to character_path
  end

  private

  def current_user_params
    params.permit(:about, :status, :avatar, :image)
  end
end
