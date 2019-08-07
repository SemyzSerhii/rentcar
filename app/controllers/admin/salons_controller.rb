class Admin::SalonsController < Admin::AdminController
  before_action :find_salon, only: %i[ show edit update destroy]

  def index
    @salons = Salon.all
  end

  def show; end

  def new
    @salon = Salon.new
  end

  def create
    @salon = Salon.create(salons_params)
    if @salon.save
      redirect_to admin_salons_path
    end
  end

  def edit; end

  def update
    if @salon.update_attributes(salons_params)
      redirect_to admin_salons_path
    else
      :edit
    end
  end

  def destroy
     if @salon.destroy
       redirect_to admin_salons_path
     end
  end

  private

  def find_salon
    @salon = Salon.find(params[:id])
  end

  def salons_params
    params.require(:salon).permit(:name, picture_attributes: %i[id url])
  end
end