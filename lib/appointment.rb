class Appointment
  attr_accessor :name, :date, :doctor
  @@all = []

  def initialize(name, date, doctor)
    @name = name
  	@date = date
  	@doctor = doctor

  	@@all << self
  end

  def self.all
  	@@all
  end

  def patient
    @name
  end

end