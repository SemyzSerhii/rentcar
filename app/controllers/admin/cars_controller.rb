class Admin::CarsController < Admin::AdminController
  before_action :find_car, only: %i[show edit update destroy]

  def index
    @cars = Car.order(:brand).page params[:page]
  end

  def show; end

  def new
    @car = Car.new
  end

  def create
    @car = Car.create(cars_params)
    if @car.save
      redirect_to admin_cars_path
    else
      render :new
    end
  end

  def edit; end

  def update
    if @car.update_attributes(cars_params)
      redirect_to admin_car_path(@car)
    else
      render :edit
    end
  end

  def destroy
    if @car.destroy
      redirect_to admin_cars_path
    end
  end

  private

  def find_car
    @car = Car.find(params[:id])
  end

  def cars_params
    params.require(:car).permit(
      :id, :brand, :model, :color, :fuel_type, :age, :engine, :enum_status, :salon_id, picture_attributes: %i[id url]
    )
  end
end