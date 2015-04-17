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
    
      #Doesn't do photos correctly yet, will need to accept them always
  def update
   @pirate_task = PirateTask.find(params[:id])
   @pirate_task.update_attributes(pirate_task_params)
      @message = "Answer incorrect, try again"
   if @pirate_task.task.task_type == 0     
       if @pirate_task.qa_submission == @pirate_task.task.correct_answer  
         @pirate_task.update_attributes(completed: true)
         @message = "Submission correct! Task completed."
       end
    end
    if @pirate_task.task.task_type == 1
        if @pirate_task.completed == false
           @pirate_task.update_attributes(pirate_task_params)
            @message = "Submission processed, waiting for approval"
        end
        if @pirate_task.completed == true
            @message = "Answer approved, no updates can be made"
        end
    end
	if @pirate_task.user_id == current_user.id
		return redirect_to({:action => 'show', :id => @pirate_task.id}, notice: @message)
	else
		return redirect_to({:controller => 'hunts', :action => 'show', :id => @pirate_task.hunt_id}, notice: @message)
	end	
  end
  
#  def adminUpdate
#   @pirate_task = PirateTask.find(params[:id])
#   @pirate_task.update_attributes(pirate_task_params)
#      @message = "Answer incorrect, try again"
#   if @pirate_task.task.task_type == 0     
#       if @pirate_task.qa_submission == @pirate_task.task.correct_answer  
#        @pirate_task.update_attributes(completed: true)
#         @message = "Submission correct! Task completed."
#       end
#    end
#    if @pirate_task.task.task_type == 1
#        if @pirate_task.completed == false
#           @pirate_task.update_attributes(pirate_task_params)
#            @message = "Submission processed, waiting for approval"
#        end
#        if @pirate_task.completed == true
#            @message = "Answer approved, no updates can be made"
#        end
#    end
#    return redirect_to({:action => 'show', :id => @hunt.id}, notice: @message)
# end
    

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


 
