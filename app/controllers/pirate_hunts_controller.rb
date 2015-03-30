class PirateHuntsController < ApplicationController
  #def myHunts
  #end

  def new
	@pirate_hunt = PirateHunt.new
  end

  # Move this to hunt#join ?
  # Todo: Lock joining a hunt until published? Or have task#create check for
  #       all respective PirateHunt(s) and add the new PirateTask to them.
  def create
    @pirate_hunt = PirateHunt.new(pirate_hunt_params)
    if @pirate_hunt.save
      # Create each PirateTask
      @pirate_hunt.hunt.tasks.each do |task|
        PirateTask.create(task: task, hunt: @pirate_hunt.hunt, user: current_user, pirate_hunt: @pirate_hunt).save
      end
      @hunt_id = pirate_hunt_params[:hunt_id]
      redirect_to(hunt_path(@hunt_id))
    else
      redirect_to(hunts_path) #also maybe changes?
      #TODO: add alert to user that join hunt failed
    end
  end

  def index
  	@pirate_hunt = PirateHunt.all
  end

  def show
  	@pirate_hunt = PirateHunt.find(params[:id])
  end

  def edit
  	@pirate_hunt = PirateHunt.find(params[:id])
  end

  def update
   @pirate_hunt = PirateHunt.find(params[:id])
   @pirate_hunt.update_attributes(pirate_hunt_params)
   redirect_to(:action => 'show', :id => @pirate_hunt.id)
   #took out if/else b/c would rather always redirect to task page, but w/
   #error message displayed on failure to update (UI functionality??)
  end

  def delete
  end

  def destroy
    PirateHunt.find(params[:id]).destroy
    redirect_to :action => 'index'
  end
  
  private
  def pirate_hunt_params
    params.require(:pirate_hunt).permit(:completed, :user_id, :hunt_id)
  end
end
