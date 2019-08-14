class SalonsController < ApplicationController
  def index
    @salons = Salon.order(:name).page params[:page]
  end

  def show
    @salon = Salon.find(params[:id])
    @cars = @salon.cars.order(:brand).page params[:page]
    sort_cars if params[:by]
  end

  def sort_cars
    @cars = @salon.cars.order(order_by).order(:brand).page params[:page]
  end

  def order_by
    case params[:by]
    when 'age_desc' then 'age DESC'
    when 'age' then 'age'
    when 'engine_desc' then 'engine DESC'
    when 'engine' then 'engine'
    else ''
    end
  end
end
