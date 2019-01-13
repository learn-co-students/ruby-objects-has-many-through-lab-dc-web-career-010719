
class Patient

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor_object, date)
    appointment = Appointment.new(date, self, doctor_object)
  end

  def appointments
    Appointment.all
  end

  def doctors
    #has many doctors through appointments
    all_pat_apps = Appointment.all.select {|app| app.patient == self}
    all_pat_apps.collect {|app| app.doctor}
  end


end
