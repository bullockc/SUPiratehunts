class HuntsController < ApplicationController

  #def myHunts
    #@hunt = Pirate_Hunt.find(params[:user])
    #@hunt = Hunt.new(hunt_params)
  #end
  
	#	when a hunt is published, for now we do not want the creator of the hunt to
	#	be able to add more tasks, because then we have to play catch-up with pirate_hunts
	#	and their pirate_tasks.
  
  def new
    @hunt = Hunt.new
  end

  def create
    @hunt = Hunt.new(hunt_params)
    if @hunt.save
      redirect_to(hunt_path(@hunt.id)) #redirects to the show for that individual hunt that was just created
    else
      render('new') #also maybe changes?
    end
  end

  # TODO index should only pass to the View Hunts that are both public and published
  def index
    @hunts = Hunt.all #.where(published: true, public: true) #for 'browse all' page
  end

  # TODO possibly a routing issue
  # you should only be able to see a hunt either if you are a the creator
  # or if the hunt is public and published
  #	or if the hunt is private and published and you have been invited
  def show
    @hunt = Hunt.find(params[:id])
    @tasks = @hunt.tasks
  end

  def edit #if 'edit hunt' page is a thing
    @hunt = Hunt.find(params[:id])
  end

  def update
    @hunt = Hunt.find(params[:id])
    @hunt.update_attributes(hunt_params)
    redirect_to(:action => 'show', :id => @hunt.id)
    #took out if/else b/c would rather always redirect to hunt page, but w/ error message displayed on failure to update (UI functionality??)
  end

  def delete
  end

  def destroy
    Hunt.find(params[:id]).destroy
    redirect_to controller: 'welcome', :action => 'index'
  end

  # Moved from PirateHunts#create to here
  def join
    @hunt = Hunt.find(params[:id])
    unless @hunt
      # If hunt not found, redirect
      redirect_to(root_path)
      return
    end

    # Check if user has already joined the hunt
    if PirateHunt.find_by(user_id: current_user.id, hunt_id: @hunt.id)
      redirect_to(root_path)
      return
    end

    # There's probably a better way to do this..
    @pirate_hunt = PirateHunt.create(hunt: @hunt, user: current_user)

    if @pirate_hunt.save
      # Create each PirateTask
      @pirate_hunt.hunt.tasks.each do |task|
        PirateTask.create(task: task, hunt: @pirate_hunt.hunt, user: current_user, pirate_hunt: @pirate_hunt).save
      end
      redirect_to(pirate_hunt_path(@pirate_hunt.id))
    else
      redirect_to(hunts_path) #also maybe changes?
      #TODO: add alert to user that join hunt failed
    end
  end

  private
  def hunt_params
   params.require(:hunt).permit(:title, :active, :published, :public, :start_date, :end_date, :start_location, :description, :user_id, :created_at, :updated_at)
  end
#end #ends the 'private' section
end #end of class
