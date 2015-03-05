class HuntsController < ApplicationController

  #def myHunts
    #@hunt = Pirate_Hunt.find(params[:pirate])
    #@hunt = Hunt.new(hunt_params)
  #end
    
  def new
    @hunt = Hunt.new
  end

  def create
    @hunt = Hunt.new(hunt_params)
    if @hunt.save
      redirect_to('root_path') #this should probably change
    else
      render('new') #also maybe changes?
    end
  end

  def index
    @hunts = Hunt.all #for 'browse all' page
  end

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
  end

  private
  def hunt_params
    params.require(:Hunt).permit(:title, :author, :active, :published, :public, :start_date, :end_date, :start_location, :description, :created_at, :updated_at)
  end
#end #ends the 'private' section
end #end of class