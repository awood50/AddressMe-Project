class AddressesController < ApplicationController
    def show
        @address = Address.find(params[:id])
    end    
    
    def new
    end
    
    def create
        @address = Address.new(address_params)
        
        @address.save
        redirect_to @address
    end
end

private
    def address_params
        params.require(:address).permit(:name, :Phone_Number, :email, :address)
    end    