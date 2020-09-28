class PortsController < ApplicationController
    before_action :correct_admin, only: [:destroy]

  
  def index
    @ports =Port.all
    from  = Time.current.at_beginning_of_day
    to    = (from + 6.day).at_end_of_day
    @add_timing = Port.where(created_at: from...to)
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
    
    if @port.comments.blank?
      @average_port_rate = 0
      @average_spot_rate = 0
    else
     @average_port_rate = @port.comments.average(:port_rate).round(1)
     @average_spot_rate = @port.comments.average(:spot_rate).round(1)
    end
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
    @port.destroy
    flash[:alert] = '該当の港を削除しました。'
    redirect_back(fallback_location: ports_path)
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
      port_images:[])
    
  end
  
  def correct_admin
    @port = current_admin.ports.find_by(id: params[:id])
    unless @port
      redirect_to root_url
    end
  end


end

