class JobsController < ApplicationController

  def index
    @jobs = Job.all
  end
  
  def new
    @job = Job.new
  end
  
  def create
    @job = Job.new(job_params)
    flash[:success] = "Job was created"
    if @job.save
      redirect_to :jobs
    end
  end
  
  def show  # leads to view
    @job = Job.find(params[:id])
  end
  
  def edit
    @job = Job.find(params[:id])
  end
  
  def update
    @job = Job.find(params[:id])
    if @job.update(job_params)
      flash[:success] = "Job was edited"
      redirect_to :jobs  
    end
  end
  
  
  def destroy
    @job = Job.find(params[:id])
    if @job.destroy
      flash[:success] = "Job was deleted"
    else
      flash[:error] = "Error deleting Job"  
    end
    redirect_to :jobs
  end
  

  private
    def job_params
      params.require(:job).permit(:company, :position, :description, :deadline, :url)
    end


end
