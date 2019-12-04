class MainController < ApplicationController

  def index
    if user_signed_in?
      @food = Food.find(current_user.id)
      @data = [["炭水化物", @food.carbonhydrate], ["タンパク質", @food.protein], ["脂質", @food.lipid]]
      @weight = Weight.weight.each
    end
  end
  
end
