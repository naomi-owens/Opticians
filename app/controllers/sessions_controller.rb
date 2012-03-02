class SessionsController < ApplicationController
	def new
		
	end
	
	def create
    patient = Patient.authenticate(params[:session][:firstname],
                             params[:session][:password])
    if patient.nil?
      flash.now[:error] = "Invalid name/password combination."      
      render 'new'
    else
      session[:patient_id] = patient.id 
      redirect_to session[:return_to] || root_path
	  session[:return_to] = nil
    end
  end
   
	
	def destroy
		if signed_in?
			session[:patient_id] = nil
		else
			flash[:notice] = "You need to sign in first"
		end
		redirect_to signin_path
	end
end
