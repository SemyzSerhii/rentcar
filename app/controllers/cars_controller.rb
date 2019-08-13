class CarsController < ApplicationController
  def index
    @cars = Car.where(salon_id: params[:salon_id]).order(:brand).page params[:page]

    sort_cars if params[:by]
  end


  private
  def sort_cars
    @cars.order(order_by)
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