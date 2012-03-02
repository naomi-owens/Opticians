module ApplicationHelper

	def signed_in?
       if session[:patient_id].nil?
	return
       else
	@current_patient = Patient.find_by_id(session[:patient_id])
       end
  end

  
end
