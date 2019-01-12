require 'pry'

class Doctor
  attr_accessor :name, :appointments, :patients

  @@all = []

  def initialize(name)
  	@name = name
  	@@all << self
  end

  def self.all
  	@@all
  end

  def new_appointment(name, date)
  	appointment = Appointment.new(name, date, self)
  end

  def appointments
    Appointment.all.select do |appointment|
    	appointment.doctor == self
    end
  end

  def patients
  	appointments.collect do |appointment|
  		appointment.name
  	end
  end


end
