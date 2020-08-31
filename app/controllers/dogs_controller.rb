class DogsController < ApplicationController
  before_action :find_dog, only: [:show]
  
  def index
    @dogs = Dog.all
    
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def find_dog
    @dog = Dog.find(params[:id])  
  end

  

end
