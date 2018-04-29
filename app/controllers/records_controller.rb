class RecordsController < ApplicationController
  decorates_assigned :record
  def index
    @Record = Record.all.decorate
  end

  def new
    @patient = Patient.find(params[:format])
    @record =  Record.new
  end

  def update
  end

  def show
  end

  def edit
  end

  def create
      @patient = Patient.find(params[:format])
      @record = @patient.records.create(record_params)
      redirect_to patient_path(@patient)
   end

   def destroy
       @patient = Patient.find(params[:patient_id])
       @record = @patient.records.find(params[:id])
       @record.destroy
       redirect_to patient_path(@patient)
   end

private
   def record_params
       params.require(:record).permit(:injury, :infection, :observation, :clinic)
   end
end
