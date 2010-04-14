class UnitsController < ApplicationController
 def index
   @runner = Runner.find(params[:runner_id]) 
   @units = @runner.units
 end 

 def show
  @runner = Runner.find(params[:runner_id])
  @unit = @runner.units.find(params[:id])
 end  

 def new 
  @runner = Runner.find(params[:runner_id])  
  @unit = @runner.units.build
 end  

 def create
  @runner = Runner.find(params[:runner_id])
  @unit = @runner.units.build(params[:unit])
  if @unit.save 
    redirect_to runner_unit_url(@runner, @unit)
  else  
   render :action => "new"  
  end 
 end

 def edit 
  @runner = runner.find(params[:runner_id])
  @unit = @runner.units.find(params[:id])
 end

 def update
  @runner = Runner.find(params[:runner_id]) 
  @unit = Unit.find(params[:id])
  if @unit.update_attributes(params[:unit])
    redirect_to runner_unit_url(@runner, @unit) 
  else
    render :action => "edit"  
  end  
 end 

 def destroy 
  @runner = Runner.find(params[:runner_id])  
  @unit = Unit.find(params[:id])
  @unit.destroy
  respond_to do |format| 
    format.html { redirect_to runner_units_path(@post) } 
    format.xml { head :ok }
  end  
 end 
end 
