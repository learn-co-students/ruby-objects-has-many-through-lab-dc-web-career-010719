require 'pry'

class Doctor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @appointments = []
    @patients = []
  end

  def self.all
    @@all
  end

  def new_appointment(date, patient)
    appointment = Appointment.new(patient, date, self)
    self.appointments << appointment
    self.patients << appointment.patient
    appointment
  end

  def appointments
    @appointments
  end

  def patients
    @patients
  end


end
