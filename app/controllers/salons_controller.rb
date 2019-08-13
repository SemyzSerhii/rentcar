class SalonsController < ApplicationController
  def index
    @salons = Salon.order(:name).page params[:page]
  end

  def show
    @salon = Salon.find(params[:id])
  end
end
