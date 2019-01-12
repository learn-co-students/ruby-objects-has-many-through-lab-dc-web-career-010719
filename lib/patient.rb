require 'pry'

class Patient
  attr_accessor :name, :doctors, :appointments

  @@all = []

  def initialize(name)
  	@name = name
  	@@all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(self, date, doctor)
  end

  def appointments
    Appointment.all.select do |appointment|
    	appointment.name == self
    end
  end

  def doctors
    appointments.collect do |appointment|
      appointment.doctor
    end
  end

  def self.all
    @@all
  end
end