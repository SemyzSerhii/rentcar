class SalonsController < ApplicationController
  def index
    @salons = Salon.order(:name).page params[:page]
  end
end
