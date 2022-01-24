class PatientsController < ApplicationController
  def index
    @patients = Patient.all
  end

  def new
    @patient = Patient.new
  end

  def create
    Patient.create(patient_params)
  end

  def show
    @patient = Patient.find(params[:id])
  end

  def edit
    @patient = Patient.find(params[:id])
  end

  def update
    @patient = Patient.find(params[:id])
    @patient.update(patient_params)
    if @patient.update(patient_params)
      redirect_to patient_path
    else
      render :edit
    end
  end

  private
  
  def patient_params
    params.require(:patient).permit(:number, :name, :name_kana, :birthday, :age, :gender_id, :address, :disease, :doctor_id, :ward_id, :key_person_relationship, :remarks, :before_hospitalization, :adjustment_manager_id, :state_id, )
  end
end