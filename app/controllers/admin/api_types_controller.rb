class Admin::ApiTypesController < Admin::ApplicationController
  def index
    if params[:project_id]
      @api_types = ApiType.where(:project_id => params[:project_id]).order("name ASC")
    else
      @api_types = ApiType.all
    end
  end

  def show
    @api_type = ApiType.find(params[:id])
  end

  def new
    @api_type = ApiType.new(project_id: params[:project_id])
  end

  def create
    @api_type = ApiType.new(params[:api_type])
    if @api_type.save
      redirect_to admin_api_type_path(@api_type), :notice => "Successfully created api."
    else
      render :action => 'new'
    end
  end

  def edit
    @api_type = ApiType.find(params[:id])
  end

  def update
    @api_type = ApiType.find(params[:id])
    if @api_type.update_attributes(params[:api_type])
      redirect_to admin_api_type_path(@api_type), :notice  => "Successfully updated api."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @api_type = ApiType.find(params[:id])
    @api_type.destroy
    redirect_to admin_api_types_url, :notice => "Successfully destroyed api."
  end
end
