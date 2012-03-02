class Appointment < ActionMailer::Base
  default from: "from@example.com"


 def appointment(appointment)
	@patient = patient
    mail(:to => patient.email, :subject => "Welcome to the blog site")
 end
end
