class Admin::CustomersController < Admin::AdminController
  def index
    @customers = Customer.order(:email).page params[:page]
  end

  def show
    @customer = Customer.find(params[:id])
  end
end