class PatientDecorator < Draper::Decorator
  delegate_all

  def name
    return object.first_name + ' ' + object.second_name if object.first_name && object.second_name
    return object.first_name if object.second_name
    'Unlisted'
  end

  def address
    return object.address1 + ', ' + object.address2 if object.address1 && object.address2
    return object.address1 if object.address2
    'Unlisted'
  end

  def send_record(patients)
    attachments['filename.jpg'] = {:mime_type => 'application/mymimetype',
                                   :content => some_string }
    mail(:to => recipient, :subject => "New account information")
  end
  
end
