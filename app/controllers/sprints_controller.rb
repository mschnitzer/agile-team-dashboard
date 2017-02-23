class SprintsController < ApplicationController
  before_action :set_sprint, only: %i{show edit update destroy}

  def index
    @sprints = Sprint.all
  end

  def new
    @sprint = Sprint.new
  end

  def create
    @sprint = Sprint.new(permitted_params)
    if @sprint.save
      flash[:notice] = 'perfect'
      redirect_to sprints_path
    else
      flash.now[:error] = 'ohhhhhhhh'
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
    if @sprint.update_attributes(permitted_params)
      flash[:notice] = 'perfect'
      redirect_to sprints_path
    else
      flash.now[:error] = 'ohhhhhhhh'
      render :edit
    end
  end

  def destroy
    if @sprint.destroy
      flash[:notice] = 'perfect'
    else
      flash[:error] = 'ohhhhhhhh'
    end
    redirect_to sprints_path
  end

  private

  def set_sprint
    @sprint = Sprint.find(params[:id])
  end

  def permitted_params
    params.require(:sprint).permit(:start_date, :end_date)
  end
end
