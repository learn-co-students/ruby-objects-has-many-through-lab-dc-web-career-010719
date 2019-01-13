
class Appointment

  attr_reader :patient, :doctor, :date

  @@all = []

  def initialize(date, patient, doctor)
    self.class.all << self
    @patient = patient
    @doctor = doctor
    @date = date
  end

  def self.all
    @@all
  end

end
