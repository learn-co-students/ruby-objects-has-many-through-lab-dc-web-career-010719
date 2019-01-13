require 'pry'


class Doctor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient_object, date)
    # binding.pry
    app = Appointment.new(date, patient_object, self)
  end

  def appointments
    Appointment.all.select {|app| app.doctor == self}
  end

  def patients
    all_doc_apps = Appointment.all.select {|app| app.doctor == self}
    # binding.pry
    all_doc_apps.collect {|app| app.patient}

  end


end
