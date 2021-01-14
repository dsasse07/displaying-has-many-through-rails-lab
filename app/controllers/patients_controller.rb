class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :edit, :update, :destroy]

  def index
    @patients = Patient.all 
  end
  
  def new
    @patient = Patient.new 
  end
  
  def create
    new_patient = Patient.create(patient_params(:name, :age))
    redirect_to patient_path(new_patient)
  end
  
  def show
  end
  
  def edit
  
  end
  
  def update
    @patient.update(patient_params(:name, :age))
    redirect_to patient_path(new_patient)
  end
  
  def destroy
  end

  private

  def set_patient
    @patient = Patient.find(params[:id])
  end

  def patient_params(*args)
    params.require(:patient).permit(*args)
  end
end
