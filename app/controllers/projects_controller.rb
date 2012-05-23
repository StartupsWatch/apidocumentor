class ProjectsController < ApplicationController
  # Cache static page
  caches_page :show
  
  def show
    @project = Project.find_by_slug(params[:project_slug])
  end
end