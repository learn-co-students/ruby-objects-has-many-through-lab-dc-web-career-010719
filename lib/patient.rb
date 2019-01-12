require 'pry'

class Patient

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @doctors = []
    @appointments = []
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(date, self, doctor)
    self.doctors << doctor
    self.appointments << appointment
    appointment
  end

  def doctors
    @doctors
  end

  def appointments
    @appointments
  end

end
