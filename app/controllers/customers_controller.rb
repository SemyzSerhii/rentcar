class CustomersController < ApplicationController
  before_action :find_customer

  def edit; end

  def update
    if @customer.update(customer_params)
      if params[:customer][:avatar].present?
        render :crop
        flash[:success] = "dsf"
      else
        redirect_to @customer, notice: "Successfully."
        flash[:success] = "dsf"
      end
    else
      render :edit
    end
  end

  def show; end

 private

  def customer_params
    params.require(:customer).permit( :avatar)
  end

  def find_customer
    @customer = Customer.find(params[:id])
  end

end