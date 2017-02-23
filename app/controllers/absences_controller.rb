class AbsencesController < ApplicationController
  before_action :set_absence, only: %i{show edit update destroy}

  def index
    @absences = Absence.all
    respond_to do |format|
      format.html
      format.json { render json: calendar_data  }
    end
  end

  def new
    @absence = Absence.new
  end

  def create
    @absence = Absence.new(permitted_params)
    if @absence.save
      flash[:notice] = 'perfect'
      redirect_to absences_path
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
    if @absence.update_attributes(permitted_params)
      flash[:notice] = 'perfect'
      redirect_to absences_path
    else
      flash.now[:error] = 'ohhhhhhhh'
      render :new
    end
  end

  def destroy
    if @absence.destroy
      flash[:notice] = 'perfect'
    else
      flash[:error] = 'ohhhhhhhh'
    end
    redirect_to absences_path
  end

  private

  def set_absence
    @absence = Absence.find(params[:id])
  end

  def permitted_params
    params.require(:absence).permit(
      :user_id,
      :start_date,
      :end_date,
      :description,
      :absence_kind
    )
  end

  def calendar_data
    data = []
    @absences.each do |absence|
      data << CalendarEvent.new(
        title: absence.absence_kind,
        start: absence.start_date,
        end: absence.end_date
      )
    end
    return data
  end
end
