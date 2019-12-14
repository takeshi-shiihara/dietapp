class FoodsController < ApplicationController
  before_action :set_user

  def new
    if user_signed_in?
      @foods = Food.new
      @weights = Weight.new
    else
      redirect_to root_path
    end
  end

  def create
    @foods = Food.new(foods_params)
    @weights = Weight.new(weights_params)
    if @foods.save || @weights.save
      redirect_to root_path
    else
      redirect_to controller: :foods, action: :new
    end
  end

  private

  def foods_params
    params.require(:food).permit(:carbonhydrate, :protein, :lipid).merge(user_id: current_user.id)
  end

  def weights_params
    params.require(:weight).permit(:weight).merge(user_id: current_user.id)
  end

  def set_user
    @user = User.find(current_user.id)
  end

end
