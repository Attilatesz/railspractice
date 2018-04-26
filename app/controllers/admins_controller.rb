class AdminsController < ApplicationController
  def index
    @projects = Project.all
    @teams = Team.all
  end
  def new
  end
  def create
  end
end
