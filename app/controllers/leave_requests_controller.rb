# frozen_string_literal: true

class LeaveRequestsController < ApplicationController
  before_action :authenticate_user

  def index
    @leave_request = LeaveRequest.all
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

  def leave_history
    @leave_requests = @current_user.leave_requests.all
  end

  def edit
    @leave_request = LeaveRequest.find(params[:id])
  end

  def update
    @leave_request = LeaveRequest.find(params[:id])

    if @leave_request.update(leave_params1)
      redirect_to @leave_request
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def leave_params
    params.require(:leave_request).permit(:start_date, :end_date, :reason).merge(user_id: @current_user.id)
  end

  def leave_params1
    params.require(:leave_request).permit(:status)
  end
end
