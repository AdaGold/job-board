class JobsController < ApplicationController
  def index
    @jobs = Job.all
  end

  def show
    @job = Job.find(params[:id])
  end

  def new
    @job = Job.new
  end

  def create
    @job = Job.new(
      title: params[:job][:title],
      description: params[:job][:description],
      company: params[:job][:description]
    )
    if @job.save
      # success!
      redirect_to jobs_path
    else
      # failures!
      render :new
    end
  end
end
