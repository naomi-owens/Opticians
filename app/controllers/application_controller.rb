class ApplicationController < ActionController::Base
  #before_filter :authorise
  protect_from_forgery
  include ApplicationHelper
  
  def authorise
    unless signed_in?
      store_location
      redirect_to signin_path, :notice => "Please sign in to access this page."
    end
  end
  
  
  def store_location
    session[:return_to] = request.fullpath
  end
  
  private
  def current_patient
    Patient.find(session[:patient_id])
    rescue ActiveRecord::RecordNotFound
      patient = Patient.create
      session[:patient_id] = patient.id
      patient
  end
end
