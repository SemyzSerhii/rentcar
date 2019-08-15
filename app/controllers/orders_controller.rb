class OrdersController < ApplicationController

  def create
    @order = Order.create(orders_params)
    if @order.save
      @order.car.update(enum_status: false )
      redirect_to salon_path(@order.salon)
    else
      redirect_to salon_path(@order.salon)
    end
  end

  private

  def orders_params
    params.require(:order).permit(:customer_name, :car_brand, :car_model, :salon_name, :customer_id, :car_id, :salon_id)
  end
end
