class EmployeesController < ApplicationController
	before_action :authenticate_user
  def index
    @employee = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new
  end

  def create
    @employee = Employee.new(employee_params)

    if @employee.save
      redirect_to @employee
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @employee = Employee.find(params[:id])
  end

  def update
    @employee = Employee.find(params[:id])

    if @employee.update(employee_params)
      redirect_to @employee
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
    def employee_params
      params.require(:employee).permit(:name, :username, :email, :password, :joining_date, :salary)
    end
end
    