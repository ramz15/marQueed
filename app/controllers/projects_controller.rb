class ProjectsController < ApplicationController
  
  before_filter :authenticate_user!
  
  def index
    @title = "Projects"
    @user = User.find(current_user.id)
    @projects = @user.projects
    # @project = Project.find_by_id(params[:project_id])
  end

  def new
    @fluid = false
    @title = "Add a Project"
    @project = Project.new 
  end
  
  def create
    project = params[:project]
    @project = Project.new(:user_id => current_user.id,
                           :name => project[:name])
    if @project.save
      flash[:success] = "Successfully created your project"
      redirect_to projects_path and return
    else 
      flash[:error] = 'There was an error creating a project'
      render 'projects/new' and return
    end
  end  

  def show
    @project = Project.find_by_id(params[:id])
  end

  def edit
    @project = Project.find_by_id(params[:id])
  end
  
  def update
    @project = Project.find(params[:id])
    if @project.update_attributes(params[:project])
      flash[:success] = "Project updated."
      redirect_to @project
    else
      @title = "Edit project"
      render 'edit'
    end
  end
  
  def destroy
    Project.find(params[:id]).destroy
    flash[:success] = "Project deleted."
    redirect_to projects_path
  end

end