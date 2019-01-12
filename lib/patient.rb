class Patient

  attr_accessor :name

  @@all =[]
  def initialize(name)
    @name = name
    @@all<< self

  end
  def self.all
    @@all
  end


  def new_appointment(name, date)
      Appointment.new(date,self, name)
  end

  def appointments
    return Appointment.all
  end

  def doctors
    Appointment.all.collect{|apt| apt.doctor}

  end

end
