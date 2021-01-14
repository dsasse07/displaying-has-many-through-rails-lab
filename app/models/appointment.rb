class Appointment < ApplicationRecord
  belongs_to :doctor
  belongs_to :patient

  def print_appointment
    self.appointment_datetime.strftime("%B %d, %Y at %k:%M")
  end

  def patient_name
    self.patient.name
  end

  def doctor_name
    self.doctor.name
  end
end
