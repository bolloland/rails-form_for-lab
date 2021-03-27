class SchoolClassesController < ApplicationController
  def new
    @school_class = SchoolClass.new
  end

  def create
    # @school_class = SchoolClass.new(class_params)
    # @school_class = SchoolClass.new
    # @school_class[:title] = params[:school_class][:title]
    # @school_class[:room_number] = params[:school_class][:room_number]
    @school_class = SchoolClass.new(class_params) 
    @school_class.save
    redirect_to school_class_path(@school_class)
  end

  def show
    @school_class = SchoolClass.find_by_id(params[:id])
  end

  def edit
    @school_class = SchoolClass.find_by_id(params[:id])
  end

  def update
    
    @school_class = SchoolClass.update(class_params)
    redirect_to school_class_path(@school_class) #show page
  end 

  private

  def class_params
    params.require(:school_class).permit(:title, :room_number)
  end

end
