class HomeController < ApplicationController
    
    def remove_deleted
        @remove_deleted = List.where(:completed => true).destroy_all
        redirect_to lists_url, notice: 'All marked items were removed.'
    end 
    
    def remove_all
        @remove_all= List.all.destroy_all
        redirect_to lists_url, notice: 'All items were removed.'
    end 
end