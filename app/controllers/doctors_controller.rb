class DoctorsController < ApplicationController
  before_action :set_doctor, only: [:show, :edit, :update, :destroy]

  def index
    @doctors = Doctor.all 
  end
  
  def new
    @doctor = Doctor.new
  end
  
  def create
    new_doctor = Doctor.create(doctor_params(:name, :age))
    redirect_to doctor_path(new_doctor)
  end
  
  def show
  end
  
  def edit
  end
  
  def update  
    @doctor.update(doctor_params(:name, :age))
    redirect_to doctor_path(new_doctor)
  end
  
  def destroy
  end

  private

  def set_doctor
    @doctor = Doctor.find(params[:id])
  end

  def doctor_params(*args)
    params.require(:doctor).permit(*args)
  end
end
