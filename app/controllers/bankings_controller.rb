class BankingsController < ApplicationController
    def index
        @bankings = Banking.all
    end
    
    def create
        @banking = Banking.create(banking_params)
        redirect_to root_path
    end
    
    private 
    def banking_params
       params.require(:banking).permit(:Date, :Title, :Amount) 
    end
end
