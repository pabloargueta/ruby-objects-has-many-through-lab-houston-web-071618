class Appointment

  @@all = []

  def initialize(patient, doctor, date)
    @patient = patient
    @doctor = doctor
    @date = date
    Appointment.all << self
  end

  attr_accessor :date, :patient, :doctor

  def self.all
    @@all
  end

  # def patient
  # end

end
