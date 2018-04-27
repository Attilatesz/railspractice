class ApprenticesController < ApplicationController
    def index
        @apprentices = Apprentice.all
    end
    def show
        @apprentice = Apprentice.find(params[:id])
      end
    def new
        @apprentice = Apprentice.new
    end
    def create
        @apprentice = Apprentice.new(apprentice_params)
        @apprentice.save
        redirect_to admins_path, :notice => "Apprentice added"
    end
    def edit
        @apprentice = Apprentice.find(params[:id])
    end
    def update
        @apprentice = Apprentice.find(params[:id])
       if @apprentice.update_attributes(apprentice_params)
        redirect_to admins_path, :notice => "Apprentice upgraded"
       else
        render "edit"
    end
    end
      private
    def apprentice_params
        params.require(:apprentice).permit( :name, :github)
    end
    end
