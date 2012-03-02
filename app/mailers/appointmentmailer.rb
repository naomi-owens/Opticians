class Appointmentmailer < ActionMailer::Base
  default from: "from@example.com"


 def send_appointment(patient, appointment)
	@patient = Patient.find_by_id(patient)
    mail(:to => @patient.email, :subject => "Thank you for making an appointment!", :body => "Hi #{@patient.firstname}, \n\n\n Thank you for making an appointment. \n\n\n Your appointment time is: #{appointment.starttime}")
 end
end
