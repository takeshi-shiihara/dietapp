class WeightsController < ApplicationController

  def new
    if user_signed_in?
      @weight = Weight.new
      @date = Date.today  
    else
      redirect_to root_path
    end
  end

  def create
    @weights = Weight.new(weights_params)
    @date = Date.today
    if @weights.save
      redirect_to root_path
    else
      redirect_to controller: :weights, action: :new
    end
  end

  private

  def weights_params
    params.reqire(:weight).permit(:weight).merge(user_id: current_user.id)
  end
end
