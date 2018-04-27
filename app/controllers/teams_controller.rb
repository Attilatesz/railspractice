class TeamsController < ApplicationController
    def new
        @apprentice = Apprentice.all
        @team = Team.new
    end
    def create
        @team = Team.new(team_params)
        @team.save
        redirect_to admins_path, :notice => "Team added"
    end
    def edit
        @team = Team.find(params[:id])
    end
    def update
        @team = Team.find(params[:id])
    if @team.update_attributes(team_params)
        redirect_to admins_path, :notice => "Team upgraded"
    else
        render "edit"
      end
    end
    private
    def team_params
        params.require(:team).permit( :image, :name, :apprentice_ids => [], :project_ids => [])
    end
end
