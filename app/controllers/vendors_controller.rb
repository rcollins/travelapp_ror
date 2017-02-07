class VendorsController < ApplicationController
  
  def list
    @vendors = Vendors.all
  end
   
  def show
    @vendor = Vendors.find(params[:id])
  end
   
  # GET request to /vendors
  # Show new vendor form
  def new
  end
   
  def create
  end
   
  def edit
  end
   
  def update
  end
   
  def delete
  end
  
end
