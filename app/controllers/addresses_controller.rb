class AddressesController < ApplicationController
    def index
        @address = Address.all
    end
    def show
        @address = Address.find(params[:id])
    end    
    
    def new
        @address = Address.new
    end
    
    def create
        @address = Address.new(address_params)
        
        if @address.save
            redirect_to @address
        else
            render 'new'
        end
    end
    def edit
        @address = Address.find(params[:id])
    end
    def update
        @address = Address.find(params[:id])
        if @address.update(article_params)
            redirect_to @address
        else
            render 'edit'
        end
    end
    def destroy
        @address = Address.find(params[:id])
        @address.destroy
        
        redirect_to articles_path
    end
end

private
    def address_params
        params.require(:address).permit(:name, :Phone_Number, :email, :address)
    end    