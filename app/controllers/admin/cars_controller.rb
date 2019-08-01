class Admin::CarsController < AdminController
  before_action :find_car, only: %i[edit update destroy]

  def new
    @car = Car.new
  end

  def create
    @car = Car.create(cars_params)
  end

  def edit; end

  def update
    @car = Car.update(cars_params)
  end

  def destroy
    @car.destroy
  end

  private

  def find_car
    @car = Car.find(params[:id])
  end

  def cars_params
    params.require(:car).permit(:name, :color, :fuel_type, :age, :engine, :enum_status)
  end
end