class PirateTasksController < ApplicationController
	
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
   @pirate_task.update_attributes(pirate_task_params)
    if @pirate_task.qa_submission == @pirate_task.task.correct_answer  
     @pirate_task.update_attributes(completed: true)
    end
 redirect_to(:action => 'show', :id => @pirate_task.id)

  end

  def delete
  end

  def destroy
    PirateTask.find(params[:id]).destroy
    redirect_to :action => 'index'
  end

  private
  def pirate_task_params
    params.require(:pirate_task).permit(:pirate_hunt_id, :submission, :answer_uploaded, :completed, :user_id, :task_id, :hunt_id, :created_at, :updated_at, :qa_submission)
    
      #pirate, hunt, pirate_hunt, and task are id fields (references)
  end
  
end


 
