class UsersController < ApplicationController
  before_action :set_user

  def show
    @foods = @user.foods.all
  end

  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email)
  end

  def set_user
    @user = User.find(current_user.id)
  end

end
