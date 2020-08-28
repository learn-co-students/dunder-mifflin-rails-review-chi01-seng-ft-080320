class EmployeesController < ApplicationController
  before_action :find_employee, only: [:show, :update, :edit]
  
  
  def index
    @employees = Employee.all
  end

  def show
  end

  def new
    @employee = Employee.new
    @dogs = Dog.all
  end

  def create
    employee = Employee.create(employee_params)
    if employee.save
      redirect_to employee_path(employee)
    else
      flash[:errors] = employee.errors.full_messages
      flash[:first_name] =  employee.first_name
      flash[:last_name] =  employee.last_name
      flash[:alias] =  employee.alias
      flash[:title] =  employee.title
      flash[:office] =  employee.office
      flash[:img_url] =  employee.img_url
      flash[:dog_id] =  employee.dog_id
      redirect_to new_employee_path
    end
  end

  def edit
  end

  def update
    @employee.update(employee_params)
    redirect_to employee_path(@employee.id)
  end

  def destroy
  end

  def find_employee
    @employee = Employee.find(params[:id])  
  end

  private

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
  end

end
