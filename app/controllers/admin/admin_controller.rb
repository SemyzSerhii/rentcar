class Admin::AdminController < ApplicationController
  before_action :must_be_admin
  layout 'admin'
  def index

  end


  private
  def must_be_admin
    unless current_customer && current_customer.admin?
      redirect_to root_path, notice: "Your admin?"
    end
  end
end
