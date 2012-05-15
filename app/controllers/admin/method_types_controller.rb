class Admin::MethodTypesController < Admin::ApplicationController
  def index
    @method_types = MethodType.all
  end

  def show
    @method_type = MethodType.find(params[:id])
  end

  def new
    @method_type = MethodType.new(api_type_id: params[:api_type_id])
    3.times do
      parameter_type = @method_type.parameter_types.build
    end
    1.times do
      error_type = @method_type.error_types.build
    end
  end

  def create
    #params[:method_type][:sample_response] = JSON.parse(params[:method_type][:sample_response])
    @method_type = MethodType.new(params[:method_type])
    if @method_type.save
      redirect_to admin_method_type_path(@method_type), :notice => "Successfully created method."
    else
      render :action => 'new'
    end
  end

  def edit
    @method_type = MethodType.find(params[:id])
  end

  def update
    @method_type = MethodType.find(params[:id])
    #params[:method_type][:sample_response] = JSON.parse(params[:method_type][:sample_response])
    if @method_type.update_attributes(params[:method_type])
      redirect_to admin_method_type_path(@method_type), :notice  => "Successfully updated method."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @method_type = MethodType.find(params[:id])
    @method_type.destroy
    redirect_to admin_method_types_path, :notice => "Successfully destroyed method."
  end
end
