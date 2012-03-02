class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.time :starttime
      t.time :endtime
      t.date :date
      t.string :appointmenttype
      t.string :status
      t.integer :patient_id
      t.integer :optician_id

      t.timestamps
    end
  end
end
