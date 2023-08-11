class UsersController < ApplicationController
  before_action :authenticate_user, except: :welcome

  def index
  end

  def welcome
  end

  def logout
    session.delete(:current_user)
    @current_user = nil
    redirect_to root_url, status: :see_other
  end

  def hr
  end

  def show
    @leave_request = LeaveRequest.find(params[:id])
  end

  def new
    @leave_request = LeaveRequest.new
  end

  def create
    @leave_request = LeaveRequest.new(leave_params)
    if @leave_request.save
      redirect_to @leave_request
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

    def leave_params
      params.require(:leave_request).permit(:start_date, :end_date, :reason, :user_id)
    end
end
