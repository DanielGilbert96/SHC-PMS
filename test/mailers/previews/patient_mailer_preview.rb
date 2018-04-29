# Preview all emails at http://localhost:3000/rails/mailers/patient_mailer
class PatientMailerPreview < ActionMailer::Preview
  def sample_mail_preview
      PatientMailer.sample_email(Patient.first)
    end
end
