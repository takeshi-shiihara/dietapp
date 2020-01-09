class WeightsController < ApplicationController

  def new
    @weight = Weight.new
  end
end
