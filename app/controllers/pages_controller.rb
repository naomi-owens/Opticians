class PagesController < ApplicationController
  def home
  @appointment = Appointment.new if signed_in?
  @patient = current_patient
  end
  
  def signed
  end

end
