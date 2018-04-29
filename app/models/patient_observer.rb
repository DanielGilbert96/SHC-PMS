class PatientObserver < ActiveRecord::Observer
  def after_create(patient)
    patient.logger.info('New patient added!')
  end

  def after_update(patient)
    patient.logger.info('Patient updated!')
  end

  def after_destroy(patient)
    patient.logger.warn("Patient with an id of #{patient.id} was destroyed!")
  end
end
