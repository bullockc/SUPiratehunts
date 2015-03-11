class PiratesController < ApplicationController

  belongs_to :owner
    
  def new
    @pirate = Pirate.new
  end

  def create
    @pirate = Pirate.new(pirate_params)
    if @pirate.save
      redirect_to('root_path') #this should probably change
    else
      render('new') #also maybe changes?
    end
  end

  def index
    @pirate = Pirate.all #for 'browse all' page
  end

  def show
    @pirate = Pirate.find(params[:id])
  end

  def edit 
    @pirate = Pirate.find(params[:id])
  end

  def update
    @pirate = Pirate.find(params[:id])
    @pirate.update_attributes(pirate_params)
    redirect_to(:action => 'show', :id => @pirate.id)

  def delete
  end

  def destroy
    Pirate.find(params[:id]).destroy
    redirect_to :action => 'index'
  end

  private
  def pirate_params
    params.require(:pirate).permit(:display_name, :user)
  end
end #ends the 'private' section
end #end of class

