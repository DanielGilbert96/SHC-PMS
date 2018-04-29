class PatientMailer < ActionMailer::Base
  default from: 'SmartHealth@shc.com'


    def sample_email(patient)
      @patient = patient
      mail(to: "hospital@dublin.com", subject: 'Sample Email')
    end
end
