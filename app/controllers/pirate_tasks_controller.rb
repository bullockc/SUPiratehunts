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
    if @pirate_task.completed == false
      @pirate_task.update_attributes(pirate_task_params)
      @pirate_task, status = @pirate_task.check_answer
      if status == :correct
        redirect_to({:action => 'show', :id => @pirate_task.id},notice: "Submission correct! Task completed")
      elsif status == :incorrect
        redirect_to({:action => 'show', :id => @pirate_task.id}, alert:"Answer incorrect, try again")
      elsif status == :waiting
        redirect_to({:action => 'show', :id => @pirate_task.id}, notice: "Answer uploaded, waiting for approval")
      end
    else
      redirect_to(pirate_task_path(@pirate_task.id), alert: "You have already completed this task")
    end
  end

  def approve
    @pirate_task = PirateTask.find(params[:id])
    @pirate_task.update_attributes(pirate_task_params)
    if @pirate_task.hunt.user_id == current_user.id
      redirect_to(hunt_path(@pirate_task.hunt_id), notice: "Photo approved")
    end
  end  

  def delete
  end

  def destroy
    PirateTask.find(params[:id]).destroy
    redirect_to :action => 'index'
  end

  # Used when rejecting photo tasks
  def reject
    ptask = PirateTask.find(params[:id])
    hunt_creator = ptask.hunt.user # Should this be pirate_hunt? But "Images for Approval" on Hunt page
    if current_user.id == hunt_creator.id
      ptask.submission.clear # Queue the attachment to be deleted
      ptask.update_attributes(completed: false, answer_uploaded: false)
      redirect_to ptask.hunt, alert: 'Answer rejected'
    end
  end

  private
  def pirate_task_params
    params.require(:pirate_task).permit(:pirate_hunt_id, :submission, :answer_uploaded, :completed, :user_id, :task_id, :hunt_id, :created_at, :updated_at, :qa_submission)
    
      #pirate, hunt, pirate_hunt, and task are id fields (references)
  end
  
end
