class CarsController < ApplicationController
  def index
    @cars = Salon.all
  end

  def show; end
end