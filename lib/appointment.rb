class Appointment

  attr_accessor :date, :patient, :doctor
  @@all = []

  def initialize(patient, doctor, date)
    @patient, @doctor, @date = patient, doctor, date
    @@all << self
  end

  def self.all
    @@all
  end

end
