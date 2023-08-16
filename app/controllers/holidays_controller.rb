# frozen_string_literal: true

class HolidaysController < ApplicationController
  before_action :authenticate_user

  def index
    @holiday = Holiday.all
  end

  def show
    @holiday = Holiday.find(params[:id])
  end

  def new
    @holiday = Holiday.new
  end

  def create
    @holiday = Holiday.new(holiday_params)

    if @holiday.save
      redirect_to @holiday
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @holiday = Holiday.find(params[:id])
  end

  def update
    @holiday = Holiday.find(params[:id])

    if @holiday.update(holiday_params)
      redirect_to @holiday
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @holiday = Holiday.find(params[:id])
    @holiday.destroy

    redirect_to holidays_path, status: :see_other
  end

  private

  def holiday_params
    params.require(:holiday).permit(:name, :date)
  end
end
