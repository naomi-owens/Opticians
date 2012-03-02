class Registermailer < ActionMailer::Base
  default from: "from@example.com"

 def send_registration(patient)
	@patient = Patient.find_by_id(patient)
    mail(:to => @patient.email, :subject => "Online Registration", :body => "Hi #{@patient.firstname}, \n\n\n Thank you for registering online. \n\n\n To make an appointment please visit our website and sign in. \n\n\n")
 end
end
