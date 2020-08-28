class DogsController < ApplicationController
    
    def index 
        @dogs = Dog.all
    end

    def sort_dogs
        @dogs = Dog.sort_by_employee_desc
    end 

    def show 
        @dog = Dog.find(params[:id])
    end 

    def new
        @dog = Dog.new
        @employees = Employee.all
    end 

    def create
        @dog = Dog.create(dog_params(:name, :breed, :age))
        if @dog.save
            redirect_to dog_path(@dog)
        else
            flash[:errors] = @dog.errors
            redirect_to new_dog_path
        end
    end 

    def edit 
        @dog = Dog.find(params[:id])
    end 

    def update
        @dog = Dog.find(params[:id])
        @dog.update(dog_params(:name, :breed, :age))
        if @dog.save
            redirect_to dog_path(@dog)
        else
            flash[:errors] = @dog.errors
            redirect_to edit_dog_path
        end
    end 

    def destroy
        @dog = Dog.find(params[:id])
        @dog.destroy
        redirect_to dogs_path
    end 

    private

    def dog_params(*args)
        params.require(:dog).permit(*args)
    end
end
