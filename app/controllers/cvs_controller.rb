class CvsController < ApplicationController

  def index
    @cvs = Cv.all
  end
  
  def new
    @job = Job.find(params[:job_id])
    @job_cv = @job.cv.new
  end
  
  def create
  end
  
  def show
    @cv = Cv.find(params[:id])
  end
  
  def edit
  end
  
  def update
  end
  
  def destroy
  end

end
