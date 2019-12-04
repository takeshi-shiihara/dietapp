class MainController < ApplicationController
  before_action :set_user

  def index
    if user_signed_in?
      if @user.foods.present?
        @food = Food.find(current_user.id)
        @data = [['炭水化物', @food.carbonhydrate], ['タンパク質', @food.protein], ['脂質', @food.lipid]]
      else
      end
    end
  end

  private

  def set_user
    @user = User.find(current_user.id)
  end
  
end
