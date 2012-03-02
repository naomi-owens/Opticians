class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :optician
  validates_presence_of :patient_id, :starttime, :endtime, :date, :appointmenttype, :status, :patient_id, :optician_id
end
