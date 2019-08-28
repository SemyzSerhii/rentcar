class CustomersController < ApplicationController
  before_action :find_customer, only: %i[edit update show]

  def edit; end

  def update
    if @customer.update(customer_params)
      if params[:customer][:avatar].present?
        render :crop
      else
        redirect_to @customer, notice: "Successfully."
      end
    else
      render :edit
    end
  end

  def show; end

 private

  def customer_params
    params.require(:customer).permit( :avatar, :crop_x, :crop_y, :crop_w, :crop_h)
  end

  def find_customer
    @customer = Customer.find(params[:id])
  end

end