class MainController < ApplicationController

  def index
    if user_signed_in?
      @user = User.find(current_user.id)
      if @user.foods.present? 
        @foods = Food.where(user_id: current_user.id)
        @weights = Weight.where(user_id: current_user.id)
        total_carbonhydrate = 0
        total_protein = 0
        total_lipid = 0
        @foods.each do |food|
          total_carbonhydrate += food.carbonhydrate
          total_protein += food.protein
          total_lipid += food.lipid
        end
        @fdata = [['炭水化物', total_carbonhydrate], ['タンパク質', total_protein], ['脂質', total_lipid]]
        @wdata = Weight.order('created_at ASC').group(:created_at).count
      #   @wdata = [[@weights.created_at, @weights.weight]]
      end
    end
  end

end
