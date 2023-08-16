# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :authenticate_user, except: :welcome

  def index
    @leave_request = LeaveRequest.all
  end

  def welcome; end

  def emp; end

  def profile
    @current_user
  end

  def logout
    session.delete(:current_user)
    @current_user = nil
    redirect_to root_url, status: :see_other
  end

  def hr; end

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
    params.require(:leave_request).permit(:start_date, :end_date, :reason, :@current_user.user_id)
  end
end
