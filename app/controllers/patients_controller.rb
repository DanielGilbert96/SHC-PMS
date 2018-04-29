class PatientsController < ApplicationController
  helper_method :sort_column, :sort_direction
  def index
    @patients = Patient.where(["first_name LIKE ?","%#{params[:search]}%"]).order(params[:sort]).paginate(:per_page => 5, :page => params[:page])
    @Patient = Patient.all.decorate

      respond_to do |format|
        format.html
        format.xlsx
      end
  end
  def email
    @patient = Patient.find(params[:format]).decorate
    PatientMailer.sample_email(@user).deliver
    redirect_to @patient
  end
  def new
    @patient = Patient.new.decorate
  end
  def show
    @patient = Patient.find(params[:id]).decorate
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
    params.require(:patient).permit(:first_name, :second_name, :dob, :address1, :address2, :phone_no)
  end

end
