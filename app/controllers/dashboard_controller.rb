class DashboardController < ApplicationController
    def index
        @dashboard = Dashboard.all
      end 

     
  end