class SchoolClassesController < ApplicationController
  def show
    @school_class = SchoolClass.find(params[:id])
  end

  def new
    @school_class = SchoolClass.new
  end

  def create
    @school_class = SchoolClass.new
    @school_class.update(title: params[:title], room_number: params[:room_number])
    redirect_to school_class_path(@school_class)
  end

  def edit
    @school_class = SchoolClass.find(params[:id])
  end

  def update
    @school_class = SchoolClass.find(params[:id])
    title =  params[:school_class][:title]
    room_number =  params[:school_class][:room_number]
    @school_class.update(title: title, room_number: room_number)
    redirect_to school_class_path(@school_class)
  end
end
