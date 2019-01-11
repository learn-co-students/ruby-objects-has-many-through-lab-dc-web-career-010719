class Doctor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  # def new
  #   @@all << self
  # end



  def self.all
    @@all
  end

  def new_appointment(name, date)
      #binding.pry
      Appointment.new(date,name, self)
  end

  def appointments
    return Appointment.all
  end

  def patients
    Appointment.all.collect{|apt| apt.patient}

  end

end
