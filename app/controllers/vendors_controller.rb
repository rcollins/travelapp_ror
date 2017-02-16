class VendorsController < ApplicationController
  
  
  # GET request to /vendors
  # Show new vendor form
  def new
    @vendor = Vendor.new
  end
   
  def create
    @vendor = Vendor.new(vendor_params)
    if @vendor.save
      redirect_to new_vendor_path, notice: "Vendor Added"
    else
      redirect_to new_vendor_path, notice: "Error Occured"
    end
  end
  
  def index
    @vendors = Vendor.all
  end
  
  def show
    @vendor = Vendor.find(params[:id])
  end
  
  def edit
    @vendors = Vendor.find params[:id]
  end
  
  def update
    @vendor = Vendor.find params[:id]
    if @vendor.update_attributes(vendor_params)
      redirect_to :action => 'show', :id => @vendor.id
    end
  end
  
  #def delete
  #  Vendor.find params[:id].destroy
  #  redirect_to :action => 'list'
  #end
  
  def destroy
    @vendor = Vendor.find(params[:id])
    @vendor.destroy
  
    redirect_to vendors_path, notice: "Delete success"
  end
  
  private
    def vendor_params
      params.require(:vendor).permit(:vendor_name, :username, :password, :memberID, :vendor_url, :notes)
    end
  
  
  
end
