class MeetingsController < ApplicationController
  before_action :set_meeting, only: %i{show edit update destroy}

  def index
    @meetings = Meeting.all
  end

  def new
    @meeting = Meeting.new
  end

  def create
    @meeting = Meeting.new(permitted_params)
    if @meeting.save
      flash[:notice] = 'perfect'
      redirect_to meetings_path
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
    if @meeting.update_attributes(permitted_params)
      flash[:notice] = 'perfect'
      redirect_to meetings_path
    else
      flash.now[:error] = 'ohhhhhhhh'
      render :new
    end
  end

  def destroy
    if @meeting.destroy
      flash[:notice] = 'perfect'
    else
      flash[:error] = 'ohhhhhhhh'
    end
    redirect_to meetings_path
  end

  private

  def set_meeting
    @meeting = Meeting.find(params[:id])
  end

  def permitted_params
    params.require(:meeting).permit(
      :name,
      :event_type,
      :location,
      :start_date,
      :end_date
    )
  end
end
