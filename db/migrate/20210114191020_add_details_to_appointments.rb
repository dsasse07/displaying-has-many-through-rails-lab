class AddDetailsToAppointments < ActiveRecord::Migration[5.0]
  def change
    add_column :appointments, :appointment_datetime, :datetime
    add_reference :appointments, :doctor, foreign_key: true
    add_reference :appointments, :patient, foreign_key: true
  end
end
