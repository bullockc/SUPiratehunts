class PirateTasksController < ApplicationController
    
  def myTasks
  end	
	
  def new
    @pirate_task = PirateTask.new
  end

  def create
    @pirate_task = PirateTask.new(pirate_task_params)
    if @PirateTask.save
      redirect_to('root_path') #this should probably change
    else
      render('new') #also maybe changes?
    end
  end

  def index
    @pirate_task = PirateTask.all
  end

  def show
    @pirate_task = PirateTask.find(params[:id])
  end

  def edit 
    @pirate_task = PirateTask.find(params[:id])
  end

  def update
   @pirate_task = PirateTask.find(params[:id])
   @pirate_task.update_attributes(pirate_task_params)
   redirect_to(:action => 'show', :id => @pirate_task.id)
   #took out if/else b/c would rather always redirect to task page, but w/
   #error message displayed on failure to update (UI functionality??)
  end

  def delete
  end

  def destroy
    PirateTask.find(params[:id]).destroy
    redirect_to :action => 'index'
  end

  private
  def pirate_task_params
    params.require(:PirateTask).permit(:answer_uploaded, :completed, :pirate_id, :task_id, :hunt_id)
  end
  
end
