class PirateTasksController < ApplicationController
    
  def myTasks
  end	
	
  def new
    @pirate_task = PirateTask.new
  end

    #Have to figure out how this works with paperclip, submit button tries to make a new
  def create
    @pirate_task = PirateTask.new(pirate_task_params)
    if @pirate_task.save
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
   if @pirate_task.update(pirate_task_params)
    redirect_to(:action => 'show', :id => @pirate_task.id)
   else
    redirect_to(:action => 'index')
       
   end
       
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
    params.require(:pirate_task).permit(:submission_file_name, :submission_content_type, :submission_file_size, :submission_updated_at, :answer_uploaded, :completed, :pirate_id, :task_id, :hunt_id, :created_at, :updated_at)
      
    
      #pirate, hunt, and task are id fields (references)
  end
  
end


 
