class Doctor

  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, patient)
    appt = Appointment.new(patient, date, self)
    @@all << appt
    return appt
  end

  def appointments
    Appointment.all.select do |appt|
      appt.doctor 
    end
  end

  def patients
    all_appt = Appointment.all.select { |appt| appt.doctor }
    all_appt.collect { |appt| appt.patient }
  end

  def self.all
    @@all
  end


end