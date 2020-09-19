class PortsController < ApplicationController
  
  def index
    @ports =Port.all
  end

  def new
    @port = Port.new
  end
  
  def create
    @port = current_admin.ports.build(port_params)
    if @port.save
      flash[:notice] = "New port : #{@port.name} is created"
      redirect_to admin_path(current_admin.id)
    end
  end
  
  def show
    @port = Port.find(params[:id])
  end
  
  def edit
    @port = Port.find(params[:id])
  end
  
  def update
    @port = Port.find(params[:id])
    if @port.update(port_params)
      flash[:notice] ="#{@port.name} page has been updated"
      redirect_to admin_path(current_admin.id)
    end
  end
  
  def destroy
  end


private

  def port_params
    params.require(:port).permit(
      :name, 
      :address, 
      :information, 
      :detail, 
      :summary, 
      :rep_name1,
      :rep_info1, 
      :rep_name2, 
      :rep_info2, 
      :contact1, 
      :contact2,
      :admin_id,
      images: [] )
    
  end


end

