class LeaveRequestController < ApplicationController

  def index
    @leave_request = LeaveRequest.all
  end

  def show
    @leave_request = LeaveRequest.find(params[:id])
  end

  def edit
    @leave_request = LeaveRequest.find(params[:id])
  end

  def update
    @leave_request = LeaveRequest.find(params[:id])

    if @leave_request.update(leave_params)
      redirect_to @leave_request
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

    def leave_params
      params.require(:leave_request).permit(:status)
    end
end
