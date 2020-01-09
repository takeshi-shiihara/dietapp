class WeightsController < ApplicationController

  def new
    if user_signed_in?
      @weight = Weight.new
      @date = Date.today  
    else
      redirect_to root_path
    end
  end
end
