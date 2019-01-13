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

    def new_appointment(doctor, date)
      Appointment.new(date, self, doctor)
      
    end
    
    def appointments
      Appointment.all
    end

    def doctors
      all_appt = Appointment.all.select { |appt| appt.patient }
      all_appt.collect { |appt| appt.doctor }
    end
  
  end