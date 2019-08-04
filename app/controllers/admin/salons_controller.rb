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
      redirect_to admin_root_path
    end
  end

  def edit; end

  def update
    @salon = Salon.update(salons_params)
  end

  def destroy
    @salon.destroy
  end

  private

  def find_salon
    @post = Salon.find(params[:id])
  end

  def salons_params
    params.require(:salon).permit(:name, picture_attributes: %i[id url])
  end
end