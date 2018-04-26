class ProjectsController < ApplicationController
  def index
    @projects = Project.all
    @teams = Team.all
  end
  def show
    @project = Project.find(params[:id])
  end
  def teams
    @teams = Team.all
  end
  def admin

  end
  def new
    @project = Project.new
  end
  def create
    @project = Project.new(project_params)
    @project.save
    redirect_to admins_path, :notice => "Project added"
  end
  def projects
    @projects = Project.all
  end
  def edit
    @project = Project.find(params[:id])
  end
  def update
    @project = Project.find(params[:id])
   if @project.update_attributes(project_params)
    redirect_to admins_path, :notice => "Project upgraded"
   else
    render "edit"
    end
  end
  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to admins_path, :notice => "Project deleted"
  end
  private
  def project_params
    params.require(:project).permit( :image, :title, :description)
  end
end
