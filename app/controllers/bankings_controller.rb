class BankingsController < ApplicationController
    def index
        @balance = Banking.balance
        @debt = Banking.debt
        @bankings = Banking.all
    end
    
    def create
        @banking = Banking.create(banking_params)
        redirect_to root_path
    end
    
    def edit
        @banking = Banking.find(params[:id])
    end
    
    def update
        @banking = Banking.find(params[:id])
            if @banking.update(banking_params)
            redirect_to root_path
            else
            redirect_to edit_idea_path(params[:id])
            end
    end
    
    def destroy
        @banking = Banking.find(params[:id])
        @banking.destroy
        redirect_to root_path
    end
    
    private 
    def banking_params
       params.require(:banking).permit(:date, :title, :amount) 
    end
end
