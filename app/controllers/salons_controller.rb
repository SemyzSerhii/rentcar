class SalonsController < ApplicationController
  def index
    @salons = Salon.all
  end

  def show; end
end
