class PirateHuntsController < ApplicationController
  def myHunts
  end

  def new
	@pirate_hunt = PirateHunt.new
  end

  def create
    @pirate_hunt = PirateHunt.new(pirate_hunt_params)
    if @pirate_hunt.save
      redirect_to(hunt_path(params[:hunt_id]) #this should probably change
    else
      render('new') #also maybe changes?
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
    params.require(:pirate_hunt).permit(:completed, :user, :hunt)
  end
end
