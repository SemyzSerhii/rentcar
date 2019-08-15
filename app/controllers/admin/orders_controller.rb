class Admin::OrdersController < Admin::AdminController
  before_action :find_orders, only: %i[ show destroy]
  def index
    @orders = Order.order(:salon_id).page params[:page]
  end

  def show; end

  def destroy
    if @order.destroy
      @order.car.update(enum_status: true)
      redirect_to admin_orders_path
    end
  end

  private
  def find_orders
    @order = Order.find(params[:id])
  end
end
