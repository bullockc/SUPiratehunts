class TasksController < ApplicationController
  def new
      @task = Task.new
  end

  def create
  @task = Task.new(task_params)
    if @task.save
      redirect_to('root_path') #this should probably change
    else
      render('new') #also maybe changes?
    end
  end

  def index
      @tasks = Task.all #for 'browse all' page
  end

  def show
      @task = Task.find(params[:id])
  end

  def edit
      @task = Task.find(params[:id])
  end

  def update
   @task = Task.find(params[:id])
   @task.update_attributes(task_params)
   redirect_to(:action => 'show', :id => @task.id)
   #took out if/else b/c would rather always redirect to task page, but w/ error message displayed on failure to update (UI functionality??)
  end

  def delete
  end

  def destroy
    Task.find(params[:id]).destroy
    redirect_to :action => 'index'
  end
  
  private
  def task_params
    params.require(:task).permit(:points, :clue, :completed, :completed_at, :updated_at)
  end
end