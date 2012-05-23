class ApiTypesController < ApplicationController
  # Cache static page
  caches_page :show
  
  def show
    @api_type = Project.find_by_slug(params[:project_slug]).api_types.where(:id => params[:id]).first
  end
end