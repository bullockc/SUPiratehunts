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
    @hunts = Hunt.all #for 'browse all' page
  end

  # TODO possibly a routing issue
  # you should only be able to see a hunt either if you are a the creator
  # or if the hunt is public and published
  #	or if the hunt is private and published and you have been invited
  def show
    @hunt = Hunt.find(params[:id])
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
    redirect_to :action => 'index'
  end

  private
  def hunt_params
    params.require(:hunt).permit(:title, :active, :published, :public, :start_date, :end_date, :start_location, :description, :user_id, :created_at, :updated_at)
  end
#end #ends the 'private' section
end #end of class