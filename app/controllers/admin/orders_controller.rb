class Admin::OrdersController < Admin::AdminController
  def index
    @orders = Order.order(:salon_id).page params[:page]
  end
end