class Team::MembersController < ApplicationController
  before_action :set_member, only: %i{show edit update destroy}

  def index
    @members = User.all
  end

  def new
    @member = User.new
  end

  def create
    @member = User.new(permitted_params)
    if @member.save
      flash[:notice] = 'perfect'
      redirect_to team_members_path
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
    if @member.update_attributes(permitted_params)
      flash[:notice] = 'perfect'
      redirect_to team_members_path
    else
      flash.now[:error] = 'ohhhhhhhh'
      render :new
    end
  end

  def destroy
    if @member.destroy
      flash[:notice] = 'perfect'
    else
      flash[:error] = 'ohhhhhhhh'
    end
    redirect_to team_members_path
  end

  private

  def set_member
    @member = User.find(params[:id])
  end

  def permitted_params
    params.require(:user).permit(
      :email,
      :password,
      :password_confirmation,
      :name,
      :surname,
      :birthday,
      :github_login,
      :location
    )
  end
end
