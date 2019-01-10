class Patient
  attr_accessor :name
  @@all = []

  def initialize(name)
    self.name = name  
    @@all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  def self.all
    # Appointment.all.map do |appointment| 
    #   appointment.patient
    # end.uniq
    @@all
  end

  def appointments
    Appointment.all.select { |appointment| appointment.patient == self }
  end

  def doctors
    self.appointments.map do |appointment|
      appointment.doctor
    end.uniq
  end
end