class AcceptAdjustmentsController < ApplicationController
  def show
    @patient = Patient.find(params[:id])
    # @patient = params[:patient_id]
    # @accept_adjustment = AcceptAdjustment.includes(:patient)
    # binding.pry
    @accept_adjustment = AcceptAdjustment.find(accept_adjustment_params[:patient_id])
    # @patient = params[:patient_id]
    # @patient = Patient.find(params[:id])
  end

  private

  def accept_adjustment_params
    params.permit(:accept_expected_day).merge(patient_id: @patient.id)
  end

end