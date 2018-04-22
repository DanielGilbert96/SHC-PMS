class PatientsController < ApplicationController
  helper_method :sort_column, :sort_direction
  def index
    #@patients = Patient.all
    @patients = Patient.where(["name LIKE ?","%#{params[:search]}%"]).order(params[:sort]).paginate(:per_page => 5, :page => params[:page])
  end
  def new
    @patient = Patient.new
  end
  def show
    @patient = Patient.find(params[:id])
  end
  def edit
      @patient = Patient.find(params[:id])
  end
  def update
    @patient = Patient.find(params[:id])

    if(@patient.update(patient_params))
      redirect_to @patient
    else
      render 'edit'
    end
  end

  def create
    #render plain: params[:patients].inspect
    @patient = Patient.new(patient_params)

    if(@patient.save)
      redirect_to @patient
    else
      render 'new'
    end
  end

  def destroy
    @patient = Patient.find(params[:id])
    @patient.destroy

    redirect_to patients_path
  end
  private def patient_params
    params.require(:patient).permit(:name, :dob, :address, :phone_no)
  end

end
