class EmployeesController < ApplicationController

    def index 
        @employees = Employee.all
    end 

    def show 
        @employee = Employee.find(params[:id])
    end 

    def new
        @employee = Employee.new
        @dogs = Dog.all
    end 

    def create
        @employee = Employee.create(employee_params(:first_name, :last_name, :title, :alias, :img_url, :office, :dog_id))
        if @employee.save
            redirect_to employee_path(@employee)
        else
            flash[:errors] = @employee.errors
            redirect_to new_employee_path
        end
    end 

    def edit 
        @employee = Employee.find(params[:id])
    end 

    def update
        @employee = Employee.find(params[:id])
    end 

    def destroy
        @employee = Employee.find(params[:id])
    end 

    private 

    def employee_params(*args)
        params.require(:employee).permit(*args)
    end

end
